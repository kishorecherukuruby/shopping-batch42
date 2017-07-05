class Category < ApplicationRecord
	has_many :products
	has_many :brands, through: :products
	accepts_nested_attributes_for :products, reject_if: proc { |attributes| attributes[:name].blank? }
end
