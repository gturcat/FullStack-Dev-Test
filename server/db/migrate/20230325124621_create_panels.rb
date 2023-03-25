class CreatePanels < ActiveRecord::Migration[6.1]
  def change
    create_table :panels do |t|
      t.boolean :hybrid
      t.string :code

      t.timestamps
    end
  end
end
