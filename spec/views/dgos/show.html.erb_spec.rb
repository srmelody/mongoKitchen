require 'spec_helper'

describe "dgos/show" do
  before(:each) do
    @dgo = assign(:dgo, stub_model(Dgo))
  end

  it "renders attributes in <p>" do
    render
  end
end
