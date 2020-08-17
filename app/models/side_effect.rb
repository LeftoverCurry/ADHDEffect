# frozen_string_literal: true

# == Schema Information
#
# Table name: side_effects
#
#  id         :bigint           not null, primary key
#  data       :text             default([]), is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  record_id  :bigint           not null
#
# Indexes
#
#  index_side_effects_on_record_id  (record_id)
#
# Foreign Keys
#
#  fk_rails_...  (record_id => records.id)
#
class SideEffect < ApplicationRecord
  belongs_to :entry

  LIST = ['difficulty falling asleep',
          'lack of appetite',
          'headache',
          'stomachache or nausea',
          'diarrhea',
          'constipation',
          'dizziness',
          'dry mouth',
          'irritability',
          'increased heart rate',
          'anxiety',
          'feeling jittery'].freeze
end
