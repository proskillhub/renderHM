class RoomType < ApplicationRecord
    has_many :room_details
    has_many :change_rooms
end
