class CreateTruckersJobs < ActiveRecord::Migration
  def change
    create_table :truckers_jobs do |t|
      t.integer :num_trucks

      t.belongs_to :trucker, index: true
      t.belongs_to :job, index: true
    end
  end
end
