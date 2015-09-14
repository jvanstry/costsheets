class CreateMatieralSuppliersJobs < ActiveRecord::Migration
  def change
    create_table :matieral_suppliers_jobs do |t|
      t.text :work_description

      t.belongs_to :matieral_supplier, index: true
      t.belongs_to :job, index: true
    end
  end
end
