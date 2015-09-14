class MatieralSupplier < ActiveRecord::Base
  has_many :jobs,
    :through => :matieral_suppliers_jobs
end
