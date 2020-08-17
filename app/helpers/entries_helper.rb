# frozen_string_literal: true

module EntriesHelper
  def build_mood_chart
    data_hash = {}
    @user_effects.each { |record| data_hash[record.datetime] = record.mood }
    data_hash
  end

  def build_effectiveness_chart
    data_hash = {}
    @user_effects.each do |record|
      data_hash[record.datetime] = record.effectiveness
    end
    data_hash
  end

  def build_side_effects_chart
    effect_list = Effect::SIDE_EFFECTS
    effect_list.map do |effect|
      { name: effect.capitolize!, data: @user_effects.side_effects.group_by_day.count }
    end
  end
end
