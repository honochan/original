class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  validates :title, presence:true, length:{maximum:255}
  validates :people, presence:true, length:{maximum:50}
  validates :page, presence:true, length:{maximum:10}
  
  has_many :microposts
  has_many :favorites
  has_many :microposts, through: :favorites, source: :micropost
  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'micropost_id'
  has_many :microposts, through: :reverses_of_favorite, source: :user

end
