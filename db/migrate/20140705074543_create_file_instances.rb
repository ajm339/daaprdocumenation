class CreateFileInstances < ActiveRecord::Migration
  def change
    create_table :file_instances do |t|
      t.integer :file_type
      t.string :name
      t.text :description
      t.integer :id
      t.integer :user_id

      t.timestamps
    end
  end
end
