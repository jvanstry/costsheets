class CreateSubContractorsJobs < ActiveRecord::Migration
  def change
    create_table :sub_contractors_jobs do |t|
      t.text :work_description

      t.belongs_to :sub_contractor, index: true
      t.belongs_to :job, index: true
    end
  end
end
