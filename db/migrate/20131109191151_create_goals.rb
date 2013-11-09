class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :goal
      t.boolen :done
      t.references :project

      t.timestamps
    end
    add_index :goals, :project_id
  end
end
