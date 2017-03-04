require 'csv'
class BulkImporter

	def initialize(file)
		@file = file
	end

    ## create the place records 
    ## via activerecord, save them 
	def parse
		rows_of_places = CSV.read("#{Rails.root}/offers_poi.tsv", { :col_sep => "\t", :headers => true })
		rows_of_places.each do |row|

			#If row with Address_1 already exists, silently skip create
			Place.create(
				name: row[0],
				address_1: row[1],
				address_2: row[2],
				postal_code_name: row[3],
				postal_code_suffix: row[4],
				phone_number: row[5],
				latitude: row[6],
				longitude: row[7],
				radius: row[8]
				)
		end
	end
end
