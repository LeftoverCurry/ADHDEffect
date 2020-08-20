# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'entries/edit', type: :view do
  let(:entry) { build :entry }

  it 'renders the edit entry form' do
    render

    assert_select 'form[action=?][method=?]', entry_path(@entry), 'post' do
      assert_select 'input[name=?]', 'entry[user_id]'
    end
  end
end
