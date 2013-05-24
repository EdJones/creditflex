require 'spec_helper'

describe "interests/index" do
  before(:each) do
    assign(:interests, [
      stub_model(Interest,
        :interest => "Interest"
      ),
      stub_model(Interest,
        :interest => "Interest"
      )
    ])
  end

  it "renders a list of interests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Interest".to_s, :count => 2
  end
end
