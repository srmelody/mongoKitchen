require 'spec_helper'

describe "dogs/new" do
  before(:each) do
    assign(:dog, stub_model(Dog,
      :name => "MyString",
      :age => "",
      :description => "MyText",
      :born_at => "",
      :active => "",
      :fav_colors => ""
    ).as_new_record)
  end

  it "renders new dog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dogs_path, :method => "post" do
      assert_select "input#dog_name", :name => "dog[name]"
      assert_select "input#dog_age", :name => "dog[age]"
      assert_select "textarea#dog_description", :name => "dog[description]"
      assert_select "input#dog_born_at", :name => "dog[born_at]"
      assert_select "input#dog_active", :name => "dog[active]"
      assert_select "input#dog_fav_colors", :name => "dog[fav_colors]"
    end
  end
end
