# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'entries/show', type: :view do
  before do
    @entry = assign(:entry, Entry.create!(
                              user: nil
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
  end
end
