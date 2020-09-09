# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'entries/new', type: :view do
  before do
    assign(:entry, Entry.new(
                     user: nil
                   ))
  end

  it 'renders new entry form' do
    render

    assert_select 'form[action=?][method=?]', entries_path, 'post' do
      assert_select 'input[name=?]', 'entry[user_id]'
    end
  end
end
