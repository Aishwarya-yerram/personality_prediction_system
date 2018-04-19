class Upload < ApplicationRecord
  mount_uploader :name, ImageUploader

    def pdf_reader(name)
	    reader = PDF::Reader.new(name)

	    reader.pages.each do |page|
	      puts page.fonts
	      puts page.text
	      puts page.raw_content
   		end
  	end 

end