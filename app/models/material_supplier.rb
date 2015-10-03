class MaterialSupplier < ActiveRecord::Base
  has_many :jobs,
    :through => :material_suppliers_jobs
end
