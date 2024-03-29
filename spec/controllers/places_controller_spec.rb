require 'rails_helper'
require 'csv'
# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe PlacesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Place. As you add validations to Place, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PlacesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  let(:test_file) {
   File.new("#{Rails.root}/offers_poi.tsv")
  }

  # describe "POST #tsv_import" do
  #   it "assigns the requested place as @place" do
  #     place = Place.create! valid_attributes
  #     get :show, params: {id: place.to_param}, session: valid_session
  #     expect(assigns(:place)).to eq(place)
  #   end
  # end

  describe "POST #tsv_import" do
    it "parses the TSV" do
      post :tsv_import, params: {file: test_file}, session: valid_session
      expect(Place.all.count).to eq(202)
    end
  end

end
