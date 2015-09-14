class CreateTruckersJobs < ActiveRecord::Migration
  def change
    create_table :truckers_jobs do |t|
      t.integer :num_trucks

      t.integer :trucker_id, index: true
      t.integer :job_id, index: true
    end
  end
end
