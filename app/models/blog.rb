class Blog < ApplicationRecord
  belongs_to :user
  has_many :favourites, dependent: :destroy
  validates :content, presence: true, length: {maximum: 255}
  validates :image, presence:true
  mount_uploader :image, ImageUploader
end
