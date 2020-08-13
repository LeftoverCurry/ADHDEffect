require 'rails_helper'

RSpec.describe "effects/show", type: :view do
  before(:each) do
    @effect = assign(:effect, Effect.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
