require 'rails_helper'

RSpec.describe Place, type: :model do

	let(:valid_params){
		{
			name: "Caribou Coffee",
			address_1: "100 5th St",
			address_2: "",
			postal_code_name: 55402,
			postal_code_suffix: nil,
			phone_number: nil,
			latitude: 44.978348,
			longitude: -93.268623,
			radius: 5
		}
	}

  it "builds the model correctly" do
  	expect(Place.new(valid_params)).to be_valid
  end
end
