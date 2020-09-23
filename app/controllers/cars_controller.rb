class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @car.update(car_params)
    redirect_to cars_path(@car)
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :color, :year, :price, :description)
  end

  def set_car 
    @car = Car.find(params[:id])
  end
end
