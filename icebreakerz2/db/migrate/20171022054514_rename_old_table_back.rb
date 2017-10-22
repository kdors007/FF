class RenameOldTableBack < ActiveRecord::Migration[5.1]
  def change
  	    rename_table :wyr, :posts
  end
end
