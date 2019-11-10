class Company < ApplicationRecord
  validates :password, confirmation: true, unless: -> { password.blank? }
  validates :password, length: { in: 8..21 }
  validates :name, length: { minimum: 4 }
  validates :description, :name, :password, :email, presence: true
  validates :description, length: { maximum: 6000 }
  validates :cnpj, format: { without: /\A[a-zA-Z]+\z/,
                             message: "only allows number" }
  has_many :projects
end
