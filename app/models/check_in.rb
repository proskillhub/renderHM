class CheckIn < ApplicationRecord
  belongs_to :bed

  has_many :change_rooms

  belongs_to :room_detail
  belongs_to :room_type
end
