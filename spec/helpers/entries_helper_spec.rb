# frozen_string_literal: true

require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the EntriesHelper. For example:
#
# describe EntriesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe EntriesHelper, type: :helper do
  describe '#build_mood_chart' do
    let(:entries) { create_list(:entry, 3) }
    subject { helper.build_mood_chart(entries) }
    it { is_expected.to be_kind_of(Hash) }

    it 'builds data hash correctly' do
      expect(subject).to include(
        entries.first.date_of_report => entries.first.mood.score
      )
      expect(subject).to include(
        entries.last.date_of_report => entries.last.mood.score
      )
    end
  end

  describe '#build_effectiveness_chart' do
    let(:entries) { create_list(:entry, 3) }
    subject { helper.build_effectiveness_chart(entries) }

    it { is_expected.to be_kind_of(Hash) }

    it 'builds data hash correctly' do
      expect(subject).to include(
        entries.first.date_of_report => entries.first.effectiveness.score
      )
      expect(subject).to include(
        entries.last.date_of_report => entries.last.effectiveness.score
      )
    end
  end

  describe '#build_side_effects_chart' do
    let(:entries) { create_list(:entry_constant_side_effect, 3) }
    subject { helper.build_side_effects_chart(entries) }
    let(:side_effect) { subject.first }

    it do
      binding.pry
      expect(side_effect).to be_kind_of(Array)
    end

    it 'pulls the correct key from the constant and titleizes it' do
      expect(side_effect[:name]).to eq('Difficulty Falling Asleep')
    end

    it 'stores the correct date as the key in the data hash' do
      expect(side_effect[:data].keys.first).to eq(entries.min_by(&:date_of_report).date_of_report)
    end

    it 'correctly counts and sorts the number of occurrences of a side effect
        and stores it in the data hash as the value' do
      data_values = side_effect.values.last.values
      expect(data_values.first).to eq(1)
      expect(data_values.last).to eq(3)
    end
  end
end
