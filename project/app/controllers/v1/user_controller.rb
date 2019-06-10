require 'json'

module V1
  class UserController < ApplicationController


  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = '*'
  end

    def index # GET
      users = User.all
      result = []
      users.each do |t|
        result.push(
          username: t.username,
          firstName: t.firstName,
          lastName: t.lastName,
          password: t.password,
          isDriver: t.isDriver,
          departureTime: t.departureTime)
        end
        render json: result
    end

    def show # GET
      users = User.find(params[:id])
      render json: users
    end

    def create
      users = JSON.parse(request.body.read)
      User.create!(users)
      render json: users
    end
  end
end
