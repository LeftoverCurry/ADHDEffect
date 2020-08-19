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
    list { generated_side_effects }
    trait :with_entry do
      entry
    end
  end
end

# generates a randomized list of up to five side effects
def generated_side_effects
  generated_side_effects = []
  rand(5).times do
    generated_side_effects << SideEffect::LIST.sample
  end
  generated_side_effects
end
