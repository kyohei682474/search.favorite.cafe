class CreateCustomerPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_posts do |t|
      
  t.string :title
  t.text :content
  t.references :customer, foreign_key: true


  t.timestamps
    end
  end
end
