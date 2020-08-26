# frozen_string_literal: true

# == Schema Information
#
# Table name: entries
#
#  id             :bigint           not null, primary key
#  date_of_report :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_entries_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :entry do
    user
    date_of_report { Faker::Time.between(from: DateTime.now - 30, to: DateTime.now, format: :default) }
    after :create do |entry|
      create :mood, entry: entry
      create :effectiveness, entry: entry
      entry.side_effects << create_sample
    end
    # Creates an entry with a side effect list that only includes 'irritability.'
    factory :entry_constant_side_effect do
      user
      date_of_report do
        Faker::Time.between(from: DateTime.now - 30,
                            to: DateTime.now, format: :default)
      end
      after :create do |entry|
        create :mood, entry: entry
        create :effectiveness, entry: entry
        entry.side_effects << create_sample
      end
    end
  end
end

# Creates up to five sample side effects.  Always includes 'difficulty falling asleep.'
def create_sample
  binding.pry
  side_effects = []
  side_effects << SideEffect.find_by(name: 'difficulty falling asleep')

  rand(5).times do
    side_effects << SideEffect.all_except(side_effects.map(&:name)).sample
  end
  side_effects
end
