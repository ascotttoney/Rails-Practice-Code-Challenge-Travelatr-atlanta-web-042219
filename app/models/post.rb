class Post < ApplicationRecord
  belongs_to :blogger
  belongs_to :destination

  validates :content, length: { minimum: 99 }
  
end
