class Category < ApplicationRecord
	has_many :products
	accepts_nested_attributes_for :products, reject_if: proc { |attributes| attributes[:name].blank? }
end
