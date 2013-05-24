require 'spec_helper'

describe "Wishes" do
  describe "GET /wishes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get wishes_path
      response.status.should be(200)
    end
  end
  
  visit wishes_path
      fill_in 'Wish', :with => "My Wish is to learn..."
      
	  click_button('Wish!')
end
