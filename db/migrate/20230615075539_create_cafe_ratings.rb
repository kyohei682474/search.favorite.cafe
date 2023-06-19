class CreateCafeRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :cafe_ratings do |t|
      t.integer :cafe_id
      t.references :customer, foreign_key: true
      t.integer :score


      t.timestamps
    end
    add_foreign_key :cafe_ratings, :cafes, column: :cafe_id
  end
end
