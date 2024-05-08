class AddReferencesToCheckIns < ActiveRecord::Migration[7.1]
  def change
    add_reference :check_ins, :room_detail, null: false, foreign_key: true
    add_reference :check_ins, :room_type, null: false, foreign_key: true
  end
end
