class CheckIn < ApplicationRecord
  belongs_to :bed
  has_many :change_rooms
end
