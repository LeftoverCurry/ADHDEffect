# == Schema Information
#
# Table name: effectivenesses
#
#  id         :bigint           not null, primary key
#  data       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  record_id  :bigint           not null
#
# Indexes
#
#  index_effectivenesses_on_record_id  (record_id)
#
# Foreign Keys
#
#  fk_rails_...  (record_id => records.id)
#
require 'rails_helper'

RSpec.describe Effectiveness, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
