class RoomDetailsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create ,:destroy ,:update]
    before_action :set_room_detail, only: %i[show edit update destroy]
  
    def index
      @room_details = RoomDetail.all
      render json: @room_details
       # Fetch all RoomDetails
    end
  
    def show
      # @room_detail is set by set_room_detail
    end
  
    def new
      @room_detail = RoomDetail.new # Initializes a new RoomDetail
    end
  
    def create
      @room_detail = RoomDetail.new(room_detail_params) # Creates a new RoomDetail with params
      if @room_detail.save
        redirect_to @room_detail, notice: 'Room detail was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      # @room_detail is set by set_room_detail
    end
  
    def update
      if @room_detail.update(room_detail_params) # Updates the existing RoomDetail
        redirect_to @room_detail, notice: 'Room detail was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @room_detail.destroy # Deletes the RoomDetail
      redirect_to room_details_url, notice: 'Room detail was successfully deleted.'
    end
  
    private
  
    def set_room_detail
      @room_detail = RoomDetail.find(params[:id]) # Finds a specific RoomDetail
    end
  
    def room_detail_params
      params.require(:room_detail).permit(:room_no, :rent_per_day, :room_type_id) # Include room_type_id
    end
  end
  