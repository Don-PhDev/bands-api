FactoryBot.define do
  factory :member do
    name { Faker::Name.unique.name }
    band_id { Band.pluck(:id).sample }
  end
end
