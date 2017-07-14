class Product < ApplicationRecord
	#validates :name , presence: true
	belongs_to :category, optional: true
	belongs_to :brand , optional: true
	has_one :promo_code
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	def self.assign_promo_code(id)
		@product = Product.find(id)
		@promo_code = @product.build_promo_code(assign_values)
		@promo_code.save!
	end

	def self.assign_values
		{code:  (0...8).map { (65 + rand(26)).chr }.join,
		valid_from: Time.now,
		valid_till: Time.now + 30.days }
	end
end
