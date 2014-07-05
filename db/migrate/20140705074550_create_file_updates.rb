class CreateFileUpdates < ActiveRecord::Migration
  def change
    create_table :file_updates do |t|
      t.integer :id
      t.integer :documentation_id
      t.integer :user_id

      t.timestamps
    end
  end
end
