require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        user: nil
      ),
      Record.create!(
        user: nil
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
