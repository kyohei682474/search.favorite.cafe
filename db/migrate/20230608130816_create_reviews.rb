class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
    t.integer :cafe, foreign_key: true
    t.integer :customer, foreign_key: true
    t.text :comment
    t.float :score




      t.timestamps
    end
  end
end
