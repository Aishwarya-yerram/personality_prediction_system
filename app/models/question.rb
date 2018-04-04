class Question < ApplicationRecord
	validates :name, :correctoption, :option1, presence: true
end
