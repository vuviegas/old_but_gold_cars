class TradesController < ApplicationController


  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)
    @trade.car = @car
    if @trade.save
      redirect_to new_car_trade_path(@car)
    else
      render :new
    end
  end

  private

  def dose_params
    params.require(:trade).permit(:status, :car_id)
  end
end
