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
  let(:entries) { create_list(:entry, 2) }

  describe '#build_mood_chart' do
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
    subject { helper.build_side_effects_chart(entries) }

    it { is_expected.to be_kind_of(Hash) }
  end
end
