class UserCarsController < ApplicationController
  def index
    # @cars = current_user.cars
    @cars = Car.all
    @trades = Trade.all
  end
end
