# frozen_string_literal: true

class SideEffect < ApplicationRecord
  belongs_to :entry
  has_many :entries, through: :entry_side_effect
end
