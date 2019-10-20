class Project < ApplicationRecord
  belongs_to :company

  validates :name, length: { maximum: 100, minimum: 10 }, presence: true
end
