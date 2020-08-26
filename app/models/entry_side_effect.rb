class EntrySideEffect < ApplicationRecord
  belongs_to :side_effect
  belongs_to :entry
end
