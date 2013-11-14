class ChangeTaskOrderToPosistion < ActiveRecord::Migration
  def up
    add_column :tasks, :position, :integer
    remove_column :tasks, :order
  end

  def down
    remove_column :tasks, :position
    add_column :tasks, :order, :integer
  end
end
