# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    id {}
    user_name { Faker::Name.first_name }
    email { Faker::Internet.safe_email }
    password { 'veracity' }
  end
end
