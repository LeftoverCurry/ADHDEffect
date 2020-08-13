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
# Indexes
#
#  index_effects_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Effect, type: :model do
  let(:user) { create :user }
  let(:effect) { create :effect, user_id: user.id }

  it 'passes with valid params' do
    expect(effect).to be_valid
  end
end
