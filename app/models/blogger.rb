class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  validates :name, { presence: true, uniqueness: true }
  validates :bio, length: { minimum: 29 }
  validates :age, { presence: true }

end
