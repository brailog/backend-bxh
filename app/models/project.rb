class Project < ApplicationRecord
  belongs_to :company

  validates :name, length: { maximum: 100, minimum: 5 }, presence: true
  validate :links_format

  private

    def links_format
      unless link1.present? and is_link_valid?(link1)
        erros.add(:link1, 'link1 em formato inválido')
      end
      unless link2.present? and is_link_valid?(link2)
        erros.add(:link2, 'link2 com formato inválido')
      end
    end

    def is_link_valid? (link)
      /(http(s)?:\/\/)?(www(\d)?\.)?\w*\.\w{2,3}(\.\w*)?/.match?(link)
    end
end
