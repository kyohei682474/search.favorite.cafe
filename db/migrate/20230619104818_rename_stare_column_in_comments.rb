class RenameStareColumnInComments < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments,:star , :score
  end

end
