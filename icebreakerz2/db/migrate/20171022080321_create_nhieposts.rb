class CreateNhieposts < ActiveRecord::Migration[5.1]
  def change
    create_table :nhieposts do |t|
      t.string :question
    
      t.timestamps
    end
  end
end
