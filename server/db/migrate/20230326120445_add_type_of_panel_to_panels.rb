class AddTypeOfPanelToPanels < ActiveRecord::Migration[6.1]
  def change
    add_column :panels, :type_of_panel, :string
  end
end
