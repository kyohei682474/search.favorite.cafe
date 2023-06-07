class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      
      t.integer :customer_id,                 null: false
      t.integer :cafe_id,                     null: false
      t.text    :content,                     null: false
      t.string  :tilte,                       null: false
      t.float   :rating,

      t.timestamps
    end
  end
end
