class CreateTruckers < ActiveRecord::Migration
  def change
    create_table :truckers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
