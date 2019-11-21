class Company < ApplicationRecord
  # validates :name, presence: true
  # validates :description, presence: true
  # validates :phone, presence: true
  # validates :email, presence: true
  # validates :cnpj, presence: true

  # validates :name, length: { minimum: 3 }
  # validates :description, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }
  # validates :password, length: { in: 6..20 }

  # validates :cnpj, numericality: { only_integer: true }
  # validates :phone, numericality: { only_integer: true }

  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects
end
