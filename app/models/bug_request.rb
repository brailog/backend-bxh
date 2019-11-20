class BugRequest < ApplicationRecord
  belongs_to :project
  belongs_to :hunter
end
