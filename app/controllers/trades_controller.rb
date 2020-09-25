class TradesController < ApplicationController
  before_action :set_car, only: [:new, :create]

  def new
  end

  def create
    @trade = Trade.new
    @status = "confirmed"
    @trade.user = current_user
    @trade.car = @car
    if @trade.save
      redirect_to new_car_trade_path(@car)
    else
      render :new
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end
end
