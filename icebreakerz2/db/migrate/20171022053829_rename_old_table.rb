class RenameOldTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :posts, :wyr
  end
end
