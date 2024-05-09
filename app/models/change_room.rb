class ChangeRoom < ApplicationRecord
    belongs_to :room_type
    belongs_to :room_detail
    belongs_to :check_in
end
