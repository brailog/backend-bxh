class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :link1, presence: true
  validates :category, presence: true

  validates :name, length: { minimum: 3 }
  validates :description, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }

  belongs_to :company, class_name: 'Company', foreign_key: 'company_id'
  has_many :bugrequests, class_name: 'BugRequest', foreign_key: 'bugrequest_id'
end
