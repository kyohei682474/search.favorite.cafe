class CreateCafes < ActiveRecord::Migration[6.1]
  def change
    create_table :cafes do |t|
      t.string :name,                  null: false
      t.string :address,               null: false
      t.string :business_hours,        null: false
      t.float  :latitude,              null: false
      t.float  :longitude,             null: false





      t.timestamps
    end
  end
end
