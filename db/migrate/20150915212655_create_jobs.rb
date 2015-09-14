class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.datetime :date
      t.string :customer
      t.string :po
      t.string :worktype
      t.text :descript_if_other
      t.string :location
      t.string :from
      t.string :to
      t.text :notes

      t.timestamps null: false
    end
  end
end
