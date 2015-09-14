class CreateMatieralSuppliers < ActiveRecord::Migration
  def change
    create_table :matieral_suppliers do |t|
      t.string :name

      has_many :jobs,
        :through => :matieral_suppliers_jobs
        
      t.timestamps null: false
    end
  end
end
