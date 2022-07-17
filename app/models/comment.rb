class Comment < ApplicationRecord
  validates :content, presence: true
  validates :post, presence: true
  validates :user, presence: true


  belongs_to :user
  belongs_to :post
end
