# frozen_string_literal: true

module EntriesHelper
  def build_mood_chart(entries)
    data_hash = {}
    entries.each { |record| data_hash[record.date_of_report] = record.mood.score }
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
    # { name of side effect => { date of effect => total count up to that date} }
    data_hash = {}
    entries.map do |entry|
      side_effect_counts = {}
      entry.side_effect.list.each do |list_item|
        count_of_previous = entries.each do |_record|
          Entry.where('date_of_report <= ?', entry.date_of_report.to_s) &
            SideEffect.where('list @> ?', "{#{list_item}}").map(&:entry).count
        end
        side_effect_counts[list_item] = count_of_previous
      end
      data_hash[entry.date_of_report] = side_effect_counts
    end

    SideEffect::LIST.map do |list_item|
      ordered_list = {}
      data_hash.each do |date, effect_hash|
        next unless v.includes?(list_item)

        ordered_list[date] = effect_hash[list_item]
      end
      { name: list_item.capitolize!, data: ordered_list }
    end
    end
  end
# EntrySideEffect.where(side_effect_id: list_item.id).distinct.pluck(:entry_id).count
# Entry.where(side_effect.list.includes?(list_item)).count
