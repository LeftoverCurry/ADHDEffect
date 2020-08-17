# == Schema Information
#
# Table name: side_effects
#
#  id         :bigint           not null, primary key
#  data       :text             default([]), is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  record_id  :bigint           not null
#
# Indexes
#
#  index_side_effects_on_record_id  (record_id)
#
# Foreign Keys
#
#  fk_rails_...  (record_id => records.id)
#
require 'rails_helper'

RSpec.describe SideEffect, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
