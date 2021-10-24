FactoryBot.define do
  factory :band do
    name { Faker::Music.unique.band }
    user_id { User.pluck(:id).sample }
  end
end
