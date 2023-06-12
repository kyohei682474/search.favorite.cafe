class Facilities < ActiveRecord::Migration[6.1]
 def change
　create_table :facilities do |t|
  t.references :cafe, null: false, foreign_key: true
  t.boolean :wifi
  t.boolean :power_outlets
  t.boolean :seating
  t.boolean :outdoor_seating
  t.boolean :parking
  t.boolean :wheelchair_accessible
  t.timestamps
end
    

 end
end
