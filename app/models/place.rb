class Place < ActiveHash::Base
  self.data = [
    { id: 1, name: '屋内' },
    { id: 2, name: '屋外' }
  ]

  include ActiveHash::Associations
  has_many :posts
end