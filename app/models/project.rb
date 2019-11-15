class Project < ApplicationRecord
  belongs_to :company, class_name: 'Company', foreign_key: 'company_id'
  has_many :bug_request, class_name: 'bug_request', foreign_key: 'bug_request_id'
end
