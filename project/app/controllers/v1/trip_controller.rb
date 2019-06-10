require 'json'

module V1
  class TripController < ApplicationController
    
  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = '*'
  end

    def index # GET
      trips = Trip.all
      result = []
      trips.each do |t|
        result.push(
          driver_id: t.driver_id,
          passenger_id: t.passenger_id,
          route_id: t.route_id)
        end
        render json: result
    end

    def show # GET
      trips = Trip.find(params[:id])
      render json: trips
    end

    def create # POST
      trips = JSON.parse(request.body.read)
      Trip.create!(trips)
      render json: trips
    end
  end
end
