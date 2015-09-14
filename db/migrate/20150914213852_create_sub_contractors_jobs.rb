class CreateSubContractorsJobs < ActiveRecord::Migration
  def change
    create_table :sub_contractors_jobs do |t|
      t.text :work_description
      t.integer :sub_contractor_id, index: true
      t.integer :job_id, index: true
    end
  end
end
