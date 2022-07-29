class Size < ActiveHash::Base
  self.data = [
    { id: 1, name: '2mm以下' },
    { id: 2, name: '3mm~1cm' },
    { id: 3, name: '1cm以上' }
  ]

  include ActiveHash::Associations
  has_many :posts
end