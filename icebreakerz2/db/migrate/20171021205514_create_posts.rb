class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :answer1
      t.string :answer2

      t.timestamps
    end
  end
end
