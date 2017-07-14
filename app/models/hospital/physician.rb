class Hospital::Physician < ApplicationRecord
	has_and_belongs_to_many :patients, class_name: 'Hospital::Patient'
end
