class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.integer :project_type_id
      t.string :title
      t.text :summary
      t.timestamps
    end
    add_index :projects, :user_id
    add_index :projects, :project_type_id
  end
end
