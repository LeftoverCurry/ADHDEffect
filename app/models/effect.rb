# frozen_string_literal: true

# == Schema Information
#
# Table name: effects
#
#  id           :bigint           not null, primary key
#  datetime     :datetime
#  mood         :integer
#  side_effects :text             default([]), is an Array
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
class Effect < ApplicationRecord
  belongs_to :user
  validates :datetime, presence: true
  validates :mood, presence: true
  validates :side_effects, presence: true
end
