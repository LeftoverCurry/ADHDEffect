# frozen_string_literal: true

# == Schema Information
#
# Table name: side_effects
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SideEffect < ApplicationRecord
  belongs_to :entry
  has_many :entries, through: :entry_side_effect
end
