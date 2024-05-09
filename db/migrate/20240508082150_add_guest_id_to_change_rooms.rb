class AddGuestIdToChangeRooms < ActiveRecord::Migration[7.1]
  def change
    add_column :change_rooms, :guest_id, :integer
  end
end
