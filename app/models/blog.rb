class Blog < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: {maximum: 255}
  validates :image, presence:true
end
