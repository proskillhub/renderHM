class CheckIn < ApplicationRecord
  belongs_to :bed
  belongs_to :room_detail
  belongs_to :room_type
end
