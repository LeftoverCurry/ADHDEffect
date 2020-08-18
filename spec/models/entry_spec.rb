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
require 'rails_helper'

RSpec.describe Entry, type: :model do
end
