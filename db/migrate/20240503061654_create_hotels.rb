class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :address
      t.integer :contact
      t.integer :tinno

      t.timestamps
    end
  end
end
