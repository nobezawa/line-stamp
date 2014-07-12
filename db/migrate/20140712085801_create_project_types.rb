class CreateProjectTypes < ActiveRecord::Migration
  def change
    create_table :project_types do |t|
      t.string :category_name
      t.timestamps
    end
  end
end
