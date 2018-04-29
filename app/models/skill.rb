class Skill < ApplicationRecord
	belongs_to :upload, optional: true
end