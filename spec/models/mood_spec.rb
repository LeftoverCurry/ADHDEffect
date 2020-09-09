# frozen_string_literal: true

# == Schema Information
#
# Table name: moods
#
#  id         :bigint           not null, primary key
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  entry_id   :bigint           not null
#
# Indexes
#
#  index_moods_on_entry_id  (entry_id)
#
# Foreign Keys
#
#  fk_rails_...  (entry_id => entries.id)
#
require 'rails_helper'

RSpec.describe Mood, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
