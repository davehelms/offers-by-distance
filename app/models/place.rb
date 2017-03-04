class Place < ApplicationRecord
	##validations in this as well as acts_as_mappable
	after_create :calculate_distance

	VERVE_LL = [33.1243208, -117.32582479999996]
	acts_as_mappable :default_units => :miles,
	           	   :default_formula => :sphere,
	           	   :distance_field_name => :distance,
	           	   :lat_column_name => :latitude,
	           	   :lng_column_name => :longitude


	validates_uniqueness_of :address_1
	validates :name, presence: true
	validates :address_1, presence: true
	validates :postal_code_name, presence: true
	validates :latitude, presence: true, numericality: true
	validates :longitude, presence: true, numericality: true

	def calculate_distance
		self.update_attribute(:distance_from_verve, self.distance_to(VERVE_LL))
	end
end
