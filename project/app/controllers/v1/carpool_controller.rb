require 'json'

module V1
  class CarpoolController < ApplicationController

  after_action :cors_set_access_control_headers

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
      routes.each do |r|
        @route = Route.new
        @route.destination = r.destination
        @route.departure = r.departure
        @route.kilometers = r.kilometers
        @route.route_params()
      end
    end

    def route_params
      params.require(:route).permit(:destination,:departure,:kilometers)
    end

    def edit

    end

    def update # PATCH

    end

    def destroy

    end
  end
end
