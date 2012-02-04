require 'spec_helper'

describe "dgos/new" do
  before(:each) do
    assign(:dgo, stub_model(Dgo).as_new_record)
  end

  it "renders new dgo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dgos_path, :method => "post" do
    end
  end
end
