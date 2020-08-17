require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        user: nil
      ),
      Entry.create!(
        user: nil
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
