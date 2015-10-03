class Job < ActiveRecord::Base 
  has_many :sub_contractors_jobs
  has_many :sub_contractors, 
    :through => :sub_contractors_jobs

  has_many :truckers_jobs
  has_many :truckers,
    :through => :truckers_jobs
    
  has_many :material_suppliers_jobs
  has_many :material_suppliers, 
    :through => :material_suppliers_jobs
end
