class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.integer :order
      t.boolean :done
      t.references :project

      t.timestamps
    end
    add_index :tasks, :project_id
  end
end
