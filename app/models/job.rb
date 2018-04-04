class Job < ApplicationRecord
	validates :title, :company_name, presence: true	

end