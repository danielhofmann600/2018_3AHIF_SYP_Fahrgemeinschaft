require 'json'

module V1
  class CarpoolController < ApplicationController


  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = '*'
  end

    def index # GET
      routes = Route.all
      result = []
      routes.each do |t|
        result.push(
          destination: t.destination,
          departure: t.departure,
          kilometers: t.kilometers)
        end
        render json: result
    end

    def show # GET
      routes = Route.find(params[:id])
      render json: routes
    end

    def create # POST
      routes = JSON.parse(request.body.read)
      Route.create!(routes)
      render json: routes
    end
  end
end
