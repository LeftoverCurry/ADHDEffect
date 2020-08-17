# frozen_string_literal: true

# == Schema Information
#
# Table name: moods
#
#  id         :bigint           not null, primary key
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  entry_id   :bigint           not null
#
# Indexes
#
#  index_moods_on_entry_id  (entry_id)
#
# Foreign Keys
#
#  fk_rails_...  (entry_id => entries.id)
#
FactoryBot.define do
  factory :mood do
    record { nil }
    score { 1 }
  end
end
