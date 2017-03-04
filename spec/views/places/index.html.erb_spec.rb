require 'rails_helper'

RSpec.describe "places/display", type: :view do
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

  before(:each) do
    assign(:places, [
      Place.create!(valid_params)
    ])
  end

  it "renders a list of places" do
    render
  end
end
