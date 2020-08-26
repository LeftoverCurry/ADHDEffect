# frozen_string_literal: true

# == Schema Information
#
# Table name: side_effects
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :side_effect do
    name { 'difficulty falling asleep' }
    entry { nil }
    trait :with_entry do
      entry
    end
    factory :side_effect_random do
      name { SideEffect.all_except('difficulty falling asleep').sample.name }
    end
  end
end
