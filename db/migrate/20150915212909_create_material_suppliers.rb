class CreateMaterialSuppliers < ActiveRecord::Migration
  def change
    create_table :material_suppliers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
