class User < ApplicationRecord
  has_many :blogs
  has_many :favourites, dependent: :destroy
  validates :name ,presence: true, length: {maximum: 20}
  validates :email ,presence: true, length: {maximum: 255},format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, on: :create
  before_validation {email.downcase!}
  has_secure_password
  validates :password ,presence: true, length: {minimum: 8}, on: :create
  validates :image, presence:true
  mount_uploader :image, ImageUploader
end
