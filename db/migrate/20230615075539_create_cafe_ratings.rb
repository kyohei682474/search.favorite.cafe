class CreateCafeRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :cafe_ratings do |t|
      t.references :cafe, foreign_key: true
      t.references :customer, foreign_key: true
      t.integer :score


      t.timestamps
    end
  end
end
