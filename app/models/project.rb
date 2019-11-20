class Project < ApplicationRecord
  belongs_to :company, class_name: 'Company', foreign_key: 'company_id'
  has_many :bugrequests, class_name: 'BugRequest', foreign_key: 'bugrequest_id'
end
