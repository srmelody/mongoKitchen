require 'spec_helper'

describe "dgos/index" do
  before(:each) do
    assign(:dgos, [
      stub_model(Dgo),
      stub_model(Dgo)
    ])
  end

  it "renders a list of dgos" do
    render
  end
end
