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
    # { name: name of side effect, data: { date of effect => total count up to
    #                                       that date} }
    chart_data = SideEffect::LIST.map do |list_item|
      side_effect_count_by_date = {}
      entries.each do |entry|
        count = 0
        entries.each do |iteration|
          next unless iteration.side_effect.list.include?(list_item) &&
                      iteration.date_of_report <= entry.date_of_report

          count += 1
        end
        side_effect_count_by_date[entry.date_of_report] = count
      end
      { name: list_item.titleize, data: side_effect_count_by_date.sort.to_h }
    end
    chart_data
  end
end