FactoryBot.define do
    factory :post do
        content { Faker::Lorem.paragraph }
        user_id nil
end