class Company < ApplicationRecord
    validates :password, confirmation: true, unless: -> { password.blank? }
    validates :name, presence: true
    validates :description, presence: true
    has_many :projects
end
