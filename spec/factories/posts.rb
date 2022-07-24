FactoryBot.define do
  factory :post do
    detail           { Faker::Lorem.sentence }
    size_id          { '2' }
    place_id         { '2' }
    image            { Rack::Test::UploadedFile.new('app/assets/images/test.png') }

    association :user
  end
end
