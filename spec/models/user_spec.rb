# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create :user }
  it 'creates a new user' do
    expect(user).to be_valid
  end
end
