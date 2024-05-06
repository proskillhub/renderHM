class RoomDetail < ApplicationRecord
  belongs_to :room_type
  enum roomstatus: { dirty: 0, clean: 1 }
end
