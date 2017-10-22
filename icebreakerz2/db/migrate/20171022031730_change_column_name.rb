class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :comments, :username, :name
  end
end
