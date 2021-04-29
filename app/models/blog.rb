class Blog < ApplicationRecord
  belongs_to :user
  has_many :favourites, dependent: :destroy
  has_many :favourite_users, through: :favourites, source: :user
  validates :content, presence: true, length: {maximum: 255}
  validates :image, presence:true
  mount_uploader :image, ImageUploader
end
