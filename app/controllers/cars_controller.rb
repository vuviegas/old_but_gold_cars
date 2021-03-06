class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @cars = Car.global_search(params[:query])
    else
      @cars = Car.all
    end

    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { car: car })
      }
    end
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
      redirect_to @car, notice: 'Car ad was successfully created!'
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

  def destroy
    @car.destroy

    redirect_to user_cars_path
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :color, :year, :price, :description, :address, photos: [])
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
