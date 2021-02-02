class Cocktail < ApplicationRecord
  has_many :doses, :dependent => :delete_all
  has_many :ingredients, :through => :doses
  has_one_attached :photo

  validates :name, uniqueness: true, presence: true
end
