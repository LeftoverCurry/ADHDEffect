# frozen_string_literal: true

# == Schema Information
#
# Table name: side_effects
#
#  id         :bigint           not null, primary key
#  list       :text             default([]), is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  entry_id   :bigint           not null
#
# Indexes
#
#  index_side_effects_on_entry_id  (entry_id)
#
# Foreign Keys
#
#  fk_rails_...  (entry_id => entries.id)
#
FactoryBot.define do
  factory :side_effect do
    list { random_effect }
    trait :with_entry do
      entry
    end
    factory :side_effect_constant_random do
      list { constant_random_effect }
    end
    factory :side_effect_constant do
      list { constant_effect }
    end
  end
end

# Generates a randomized list of up to five side effects.
def random_effect
  generated_side_effects = []
  rand(5).times do
    generated_side_effects << SideEffect::LIST.sample
  end
end

# Generates a list of side effects that only includes 'difficulty falling
# asleep.'
def constant_effect
  ['difficulty falling asleep']
end

# Generates a random list of side effects that always includes 'difficulty
# falling asleep.'
def constant_random_effect
  generated_side_effects = []
  list_of_effects = SideEffect::LIST - ['irritability']
  rand(5).times do
    generated_side_effects << list_of_effects.sample
  end
  generated_side_effects << 'irritability'
end
