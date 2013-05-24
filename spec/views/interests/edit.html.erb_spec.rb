require 'spec_helper'

describe "interests/edit" do
  before(:each) do
    @interest = assign(:interest, stub_model(Interest,
      :interest => "MyString"
    ))
  end

  it "renders the edit interest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => interests_path(@interest), :method => "post" do
      assert_select "input#interest_interest", :name => "interest[interest]"
    end
  end
end
