require "rails_helper"

RSpec.describe PlacesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/places").to route_to("places#index")
    end

    it "routes to #display" do
      expect(:get => "/places/display").to route_to("places#display")
    end

  end
end
