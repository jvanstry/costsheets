class Trucker < ActiveRecord::Base
  has_many :jobs, 
    :through => :truckers_jobs
end
