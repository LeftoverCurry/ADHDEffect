# frozen_string_literal: true

module EffectsHelper
  def build_mood_chart
    data_hash = {}
    @user_effects.each { |record| data_hash[record.datetime] = record.mood }
    data_hash
  end
end
