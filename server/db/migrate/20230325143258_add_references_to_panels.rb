class AddReferencesToPanels < ActiveRecord::Migration[6.1]
  def change
    add_reference :panels, :pvmes_declaration, null: false, foreign_key: true
  end
end
