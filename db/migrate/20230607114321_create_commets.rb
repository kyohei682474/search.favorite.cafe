class CreateCommets < ActiveRecord::Migration[6.1]
  def change
    create_table :commets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.text :content, null: false


      t.timestamps
    end
  end
end
