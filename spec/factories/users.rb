FactoryBot.define do
  factory :user do
    email { Faker::Name.first_name + "@gmail.com" }
    password_digest { "password" }
  end
end
