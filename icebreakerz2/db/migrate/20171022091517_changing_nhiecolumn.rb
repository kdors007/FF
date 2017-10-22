class ChangingNhiecolumn < ActiveRecord::Migration[5.1]
  def change
  	  	rename_column :nhiecomments, :username, :name
  end
end
