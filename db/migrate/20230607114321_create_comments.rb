class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :content, null: false
      t.integer :customer_id
      t.integer :cafe_id
      t.timestamps null: false
    end
    add_foreign_key :comments, :customers, column: :customer_id
    add_foreign_key :comments, :cafes, column: :cafe_id


  end
end
