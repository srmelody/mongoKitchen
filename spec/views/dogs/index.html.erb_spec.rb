require 'spec_helper'

describe "dogs/index" do
  before(:each) do
    assign(:dogs, [
      stub_model(Dog,
        :name => "Name",
        :age => "",
        :description => "MyText",
        :born_at => "",
        :active => "",
        :fav_colors => ""
      ),
      stub_model(Dog,
        :name => "Name",
        :age => "",
        :description => "MyText",
        :born_at => "",
        :active => "",
        :fav_colors => ""
      )
    ])
  end

  it "renders a list of dogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
