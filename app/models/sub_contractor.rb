class SubContractor < ActiveRecord::Base
  has_many :jobs,
    :through => :sub_contractors_jobs  
end
