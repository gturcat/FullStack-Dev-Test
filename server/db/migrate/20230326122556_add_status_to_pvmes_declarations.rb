class AddStatusToPvmesDeclarations < ActiveRecord::Migration[6.1]
  def change
    add_column :pvmes_declarations, :status, :integer
  end
end
