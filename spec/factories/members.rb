FactoryBot.define do
  factory :member do
    name { Faker::Name.unique.name }
    band_id { Band.pluck(:id).sample }
    user_id { User.pluck(:id).sample }
  end
end
