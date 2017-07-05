class Brand < ApplicationRecord
	has_many :products
	has_many :categories, through: :products
	accepts_nested_attributes_for :categories, reject_if: proc { |attributes| attributes[:name].blank? }
	accepts_nested_attributes_for :products, reject_if: proc { |attributes| attributes[:name].blank? }
end
