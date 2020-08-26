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

    factory :side_effect_random do
      name { SideEffect.all.sample.name }
    end
  end
end
