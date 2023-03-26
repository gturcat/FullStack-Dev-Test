class RemoveHybridToPanels < ActiveRecord::Migration[6.1]
  def change
    remove_column :panels, :hybrid
  end
end
