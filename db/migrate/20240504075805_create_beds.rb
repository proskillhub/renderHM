class CreateBeds < ActiveRecord::Migration[7.1]
  def change
    create_table :beds do |t|
      t.string :bed_size
      t.decimal :price

      t.timestamps
    end
  end
end
