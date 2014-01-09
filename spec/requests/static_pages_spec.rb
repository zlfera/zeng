require 'spec_helper'

describe "StaticPages" do
  describe "home page" do
    it do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      expect(page).to have_content('sample app')
    end
  end
end
