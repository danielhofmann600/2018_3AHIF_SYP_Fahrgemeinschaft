  require 'rails_helper'

RSpec.describe V1::CarpoolController, type: :controller do
  describe "GET index" do
    it "returns no data" do
      get :index
      expect(response.body).to eq([].to_json)
    end
  end
end
=begin
    it "returns stored data" do
      # prefill db data
      route = Route.new
      route.save

      get :index
      expected_body = [{
        destination: route.destination,
        departure: route.departure ,
        kilometers: route.kilometers
      }].to_json

      expect(response.body).to eq(expected_body)
    end
  end
=end

=begin
  describe "POST create" do
    context "fails" do
      it "raises ArgumentError when no body is being passed" do
        expect { post :create }.to raise_error ArgumentError
      end
    end
    context "success" do
      let(:params) do
        {
          coordinates: trace
        }
      end
      let(:trace) do
        [{ latitude: 32.9377784729004, longitude: -117.230392456055 },
        { latitude: 32.937801361084, longitude: -117.230323791504 },
        { latitude: 32.9378204345703, longitude: -117.230278015137 }]
      end
      it "stores data into databse" do
        expected_body = [{
          coordinates: [
            { latitude: 32.1213245, longitude: 112.3489 }
          ]
        }
        ].to_json
        post :create, params: params
        expect(response.body).to eq(expected_body)



      end
    end

=end
