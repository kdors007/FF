class CreateNhiecomments < ActiveRecord::Migration[5.1]
  def change
    create_table :nhiecomments do |t|
      t.string :username
      t.string :body
      t.references :nhiepost, foreign_key: true

      t.timestamps
    end
  end
end
