# frozen_string_literal: true

# == Schema Information
#
# Table name: effectivenesses
#
#  id         :bigint           not null, primary key
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  entry_id   :bigint           not null
#
# Indexes
#
#  index_effectivenesses_on_entry_id  (entry_id)
#
# Foreign Keys
#
#  fk_rails_...  (entry_id => entries.id)
#
class Effectiveness < ApplicationRecord
  belongs_to :entry
  validates :score, presence: true
end
