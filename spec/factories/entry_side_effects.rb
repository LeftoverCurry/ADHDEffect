# frozen_string_literal: true

# == Schema Information
#
# Table name: entry_side_effects
#
#  id             :bigint           not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  entry_id       :bigint           not null
#  side_effect_id :bigint           not null
#
# Indexes
#
#  index_entry_side_effects_on_entry_id        (entry_id)
#  index_entry_side_effects_on_side_effect_id  (side_effect_id)
#
# Foreign Keys
#
#  fk_rails_...  (entry_id => entries.id)
#  fk_rails_...  (side_effect_id => side_effects.id)
#
FactoryBot.define do
  factory :entry_side_effect do
    side_effect
    entry
  end
end
