require 'spec_helper'

describe "dgos/edit" do
  before(:each) do
    @dgo = assign(:dgo, stub_model(Dgo))
  end

  it "renders the edit dgo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dgos_path(@dgo), :method => "post" do
    end
  end
end
