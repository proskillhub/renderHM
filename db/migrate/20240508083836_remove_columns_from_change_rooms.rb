class RemoveColumnsFromChangeRooms < ActiveRecord::Migration[7.1]
  def change
    remove_column :change_rooms, :room_no, :string
    remove_column :change_rooms, :room_type, :string
    remove_column :change_rooms, :rent_per_day, :decimal
    remove_column :change_rooms, :guest_id, :integer
  end
end
