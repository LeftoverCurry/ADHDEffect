# frozen_string_literal: true

FactoryBot.define do
  factory :effect do
    datetime { Faker::Time.backward(days: 1, period: :evening) }
    mood { Faker::Number.within(range: 1..10) }
    side_effects { %w[irritability drowsiness] }
    user_id { 1 }
  end
end
