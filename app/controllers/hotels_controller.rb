# app/controllers/hotels_controller.rb

class HotelsController < ApplicationController
    before_action :set_hotel, only: [:show, :edit, :update, :destroy]
  
    def index
      @hotels = Hotel.all
     render json: @hotels
    end
  
    def show
        render json: @hotel
    end
  
    def new
      @hotel = Hotel.new
    end
  
    def edit
    end
  
    def create
      @hotel = Hotel.new(hotel_params)
      if @hotel.save
        redirect_to @hotel, notice: 'Hotel was successfully created.'
      else
        render :new
      end
    end
  
    def update
      if @hotel.update(hotel_params)
        redirect_to @hotel, notice: 'Hotel was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @hotel.destroy
      redirect_to hotels_url, notice: 'Hotel was successfully destroyed.'
    end
  
    private
      def set_hotel
        @hotel = Hotel.find(params[:id])
      end
  
      def hotel_params
        params.require(:hotel).permit(:name, :address, :contact, :tinno)
      end
  end
  