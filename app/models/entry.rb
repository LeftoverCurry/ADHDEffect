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
class Entry < ApplicationRecord
  belongs_to :user
  has_one :mood, dependent: :destroy
  accepts_nested_attributes_for :mood, reject_if: ->(attributes) { attributes['score'].blank? }
  has_one :effectiveness, dependent: :destroy
  accepts_nested_attributes_for :effectiveness, reject_if: ->(attributes) { attributes['score'].blank? }
  has_many :entry_side_effects, dependent: :destroy
  has_many :side_effects, through: :entry_side_effects
end
