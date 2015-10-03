class CreateMaterialSuppliersJobs < ActiveRecord::Migration
  def change
    create_table :material_suppliers_jobs do |t|
      t.text :work_description
      t.integer :material_supplier_id, index: true
      t.integer :job_id, index: true
    end
  end
end
