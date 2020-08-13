require 'rails_helper'

RSpec.describe "effects/new", type: :view do
  before(:each) do
    assign(:effect, Effect.new())
  end

  it "renders new effect form" do
    render

    assert_select "form[action=?][method=?]", effects_path, "post" do
    end
  end
end
