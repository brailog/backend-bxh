class BugRequest < ApplicationRecord
  has_one :projects, class_name: 'project', foreign_key: 'project_id'
  has_one :hunters, class_name: 'hunter', foreign_key: 'hunter_id'
end
