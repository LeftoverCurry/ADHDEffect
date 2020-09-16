# == Schema Information
#
# Table name: side_effects
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SideEffect < ApplicationRecord
  has_many :entry_side_effects
  has_many :entries, through: :entry_side_effect

  
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
          'feeling jittery',
          'heavy crash'].freeze

  # Allows for a search that excludes one side effect
  def self.all_except(side_effect_name)
    where.not(name: side_effect_name)
  end

  def titleize_effect
    name.to_s.titleize
  end
end
