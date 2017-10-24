class AddUserIdToNhiecomments < ActiveRecord::Migration[5.1]
  def change
  	add_column :nhiecomments, :user_id, :bigint 
  end
end
