require 'rails_helper'

RSpec.describe "effects/index", type: :view do
  before(:each) do
    assign(:effects, [
      Effect.create!(),
      Effect.create!()
    ])
  end

  it "renders a list of effects" do
    render
  end
end
