class CreateSubContractors < ActiveRecord::Migration
  def change
    create_table :sub_contractors do |t|
      t.string :name

      has_many :jobs,
        :through => :sub_contractors_jobs

      t.timestamps null: false
    end
  end
end
