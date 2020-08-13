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
require 'rails_helper'

RSpec.describe Effect, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
