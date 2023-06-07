class CreateCafes < ActiveRecord::Migration[6.1]
  def change
    create_table :cafes do |t|
      t.integer :name,                 null: false
      t.string :address,               null: false
      t.string :business_hours,        null: false
      t.float  :rate,                  null: false
      t.boolean :status,               null: false
      
      
      


      t.timestamps
    end
  end
end
