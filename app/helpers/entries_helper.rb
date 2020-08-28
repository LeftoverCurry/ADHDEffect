# frozen_string_literal: true

module EntriesHelper
  def build_mood_chart(entries)
    data_hash = {}
    entries.each do |record|
      data_hash[record.date_of_report] = record.mood.score
    end
    data_hash
  end

  def build_effectiveness_chart(entries)
    data_hash = {}
    entries.each do |record|
      data_hash[record.date_of_report] = record.effectiveness.score
    end
    data_hash
  end

  def build_side_effects_chart(entries)
    chart = SideEffect.all.map do |side_effect|
      { name: side_effect.name.titleize, data: entry_data(entries, side_effect) }
    end
  end

  def entry_data(entries, side_effect)
    data = {}
    entries.each do |entry|
      count = 0
      entries.each do |iteration|
        next unless iteration.date_of_report <= entry.date_of_report &&
                    iteration.side_effects.include?(side_effect)

        count += 1
      end
      data[entry.date_of_report] = count
    end
    data.sort.to_h
  end
end
