require 'rails_helper'

RSpec.describe "effects/edit", type: :view do
  before(:each) do
    @effect = assign(:effect, Effect.create!())
  end

  it "renders the edit effect form" do
    render

    assert_select "form[action=?][method=?]", effect_path(@effect), "post" do
    end
  end
end
