class CreateFacilities < ActiveRecord::Migration[6.1]
  def change
    create_table :facilities do |t|
      t.integer :cafe_id, null: false
      t.boolean :wifi, default: false
      t.boolean :power_outlets, default: false
      t.boolean :seating, default: false
      t.boolean :outdoor_seating, default: false
      t.boolean :parking, default: false
      t.boolean :wheelchair_accessible, default: false
      t.timestamps null: false
    end
    add_foreign_key :facilities, :cafes, column: :cafe_id
  end
end