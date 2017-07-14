class Hospital::Patient < ApplicationRecord
	has_and_belongs_to_many :physicians, class_name: 'Hospital::Physician'
end
