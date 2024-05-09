
class ChangeRoomsController < ApplicationController
  before_action :set_change_room, only: [:show, :edit, :update, :destroy]

  def index
    @change_rooms = ChangeRoom.all # Retrieve all ChangeRoom records
  end

  def show
  end

  def new
    @change_room = ChangeRoom.new
    @check_ins = CheckIn.all
  end

  def create
    @change_room = ChangeRoom.new(change_room_params)

    if @change_room.save
      redirect_to @change_room, notice: "Room change created successfully."
    else
      render :new
    end
  end

  def edit
    @room_types = RoomType.all  # To populate dropdowns
    @room_details = RoomDetail.all
    @checkins = Checkin.all
  end

  def update
    if @change_room.update(change_room_params)
      redirect_to @change_room, notice: "Room change updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @change_room.destroy
    redirect_to change_rooms_path, notice: "Room change deleted successfully."
  end

  private

  def set_change_room
    @change_room = ChangeRoom.find(params[:id])
  end

  def change_room_params
    params.require(:change_room).permit(:reason, :room_type_id, :room_detail_id, :check_in_id) 
  end
end
