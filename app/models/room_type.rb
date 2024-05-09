class RoomType < ApplicationRecord

    has_many :room_details
    has_many :change_rooms

    has_many :check_ins

end
