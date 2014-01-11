require 'spec_helper'

describe "StaticPages" do
  describe "home page" do
    it do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      expect(page).to have_content('sample app')
    end
  end
  describe 'help page' do
    it 'should have content "help page"' do
      visit 'static_pages/help'
      expect(page).to have_content('help page')
    end
  end
  describe 'about page' do
    it 'should have content "about us"' do
      visit 'static_pages/about'
      expect(page).to have_content('about us')
    end
  end
  
end
