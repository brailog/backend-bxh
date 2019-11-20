class BugRequest < ApplicationRecord
  belongs_to :project, class_name: "Project", foreign_key: "project_id"
  belongs_to :hunter, class_name: "Hunter", foreign_key: "hunter_id"
end