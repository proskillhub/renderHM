
class RoomTypesController < ApplicationController
  before_action :set_room_type, only: %i[show edit update destroy]

  def index
    @room_types = RoomType.all # Fetches all RoomTypes
  end

  def show
    # @room_type is set by set_room_type before_action
  end

  def new
    @room_type = RoomType.new # Initializes a new RoomType for the form
  end

  def create
    @room_type = RoomType.new(room_type_params) # Creates a new RoomType with params
    if @room_type.save
      redirect_to @room_type, notice: 'Room type was successfully created.'
    else
      render :new # If validation fails, re-render the 'new' template
    end
  end

  def edit
    # @room_type is set by set_room_type before_action
  end

  def update
    if @room_type.update(room_type_params) # Updates the existing RoomType
      redirect_to @room_type, notice: 'Room type was successfully updated.'
    else
      render :edit # If validation fails, re-render the 'edit' template
    end
  end

  def destroy
    @room_type.destroy # Deletes the RoomType
    redirect_to room_types_url, notice: 'Room type was successfully deleted.'
  end

  private

  def set_room_type
    @room_type = RoomType.find(params[:id]) # Finds a RoomType by ID
  end

  def room_type_params
    params.require(:room_type).permit(:room_type) # Strong parameters for RoomType
  end
end
