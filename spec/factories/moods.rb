# frozen_string_literal: true

# == Schema Information
#
# Table name: moods
#
#  id         :bigint           not null, primary key
#  data       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  record_id  :bigint           not null
#
# Indexes
#
#  index_moods_on_record_id  (record_id)
#
# Foreign Keys
#
#  fk_rails_...  (record_id => records.id)
#
FactoryBot.define do
  factory :mood do
    record { nil }
    score { 1 }
  end
end
