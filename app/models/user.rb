class User < ApplicationRecord
  has_many :blogs
  validates :name ,presence: true, length: {maximum: 20}
  validates :email ,presence: true, length: {maximum: 255},format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation {email.downcase!}
  has_secure_password
  validates :password ,presence: true, length: {minimum: 8}
  validates :image, presence:true
  mount_uploader :image, ImageUploader
end
