class CreatePvmesDeclarations < ActiveRecord::Migration[6.1]
  def change
    create_table :pvmes_declarations do |t|
      t.string :compagny_name
      t.string :compagny_siren
      t.string :customer_name
      t.string :customer_email
      t.string :customer_phone
      t.string :adress
      t.date :date_of_installation

      t.timestamps
    end
  end
end
