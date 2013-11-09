class AddingReferenceToProject < ActiveRecord::Migration
  def change
    add_column :members, :project_id, :integer, index: true
  end
  
end
