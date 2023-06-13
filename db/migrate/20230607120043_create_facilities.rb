class CreateFacilities < ActiveRecord::Migration[6.1]
  def change
    create_table :facilities do |t|
      t.references :cafe, null: false, foreign_key: true
      t.boolean :wifi, default: false
      t.boolean :power_outlets, default: false
      t.boolean :seating, default: false
      t.boolean :outdoor_seating, default: false
      t.boolean :parking, default: false
      t.boolean :wheelchair_accessible, default: false
      t.timestamps null: false
    end
  end
end