class CreateFileMethods < ActiveRecord::Migration
  def change
    create_table :file_methods do |t|
      t.integer :id
      t.integer :created_by
      t.string :name
      t.text :description
      t.text :input
      t.text :output
      t.references :file_instance, index: true

      t.timestamps
    end
  end
end
