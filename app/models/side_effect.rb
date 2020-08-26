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

  # Creates up to five sample side effects.  Always includes 'irritability.'
  def self.create_sample
    side_effects = []
    side_effects << SideEffect.find_by(name: 'difficulty falling asleep')
    rand(5).times do
      side_effects << SideEffect.all_except(side_effects.map(&:name)).sample
    end
    side_effects
  end
end
