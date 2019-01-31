class Speciality < ApplicationRecord
	has_many :specialdocs
	has_many :doctors, through: :specialdocs
end
