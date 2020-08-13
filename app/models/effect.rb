# frozen_string_literal: true

class Effect < ApplicationRecord
  belongs_to :user
  validates :datetime, presence: true
  validates :mood, presence: true
  validates :side_effects, presence: true
end
