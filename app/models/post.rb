class Post < ApplicationRecord
  validates :detail, presence: true
  validates :size_id, presence: true
  validates :place_id, presence: true
  validates :image, presence: true


  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :size
  belongs_to :place
end
