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
    transient do
      one_constant { false }
    end

    user
    date_of_report { Faker::Time.between(from: DateTime.now - 30, to: DateTime.now, format: :default) }

    after :create do |entry, one_constant|
      create :mood, entry: entry
      create :effectiveness, entry: entry
      entry.side_effects << if one_constant
                              SideEffect.find_by(name: 'difficulty falling asleep')
                            else
                              SideEffect.create_sample
                            end
    end
    # Creates an entry with a side effect list that only includes 'irritability.'
  end
end
