require 'spec_helper'

describe "interests/new" do
  before(:each) do
    assign(:interest, stub_model(Interest,
      :interest => "MyString"
    ).as_new_record)
  end

  it "renders new interest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => interests_path, :method => "post" do
      assert_select "input#interest_interest", :name => "interest[interest]"
    end
  end
end
