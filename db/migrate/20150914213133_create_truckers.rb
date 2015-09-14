class CreateTruckers < ActiveRecord::Migration
  def change
    create_table :truckers do |t|
      t.string :name

      has_many :jobs, 
        :through => :truckers_jobs

      t.timestamps null: false
    end
  end
end
