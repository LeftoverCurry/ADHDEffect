# frozen_string_literal: true

# == Schema Information
#
# Table name: effects
#
#  id            :bigint           not null, primary key
#  datetime      :datetime
#  effectiveness :integer
#  mood          :integer
#  side_effects  :text             default([]), is an Array
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint           not null
#
# Indexes
#
#  index_effects_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Effect < ApplicationRecord
  belongs_to :user
  validates :datetime, presence: true
  validates :mood, presence: true
end
