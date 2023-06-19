class RenameScoreColumnInComments < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments, :score, :star
  end
end
