require 'spec_helper'

describe "StaticPages" do
  describe 'contact us' do
    subject {page}
    before {visit 'contact'}
    it "should have content'contact us'" do
      expect(page).to have_content('contact us')
    end
    it {should have_title('contact us')}
  end
  
  
  
  
  
  
  
  describe "home page" do
    it do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      expect(page).to have_content('sample app')
    end
  end
  describe 'help page' do
    it 'should have content "help page"' do
      visit 'help'
      expect(page).to have_content('help page')
    end
  end
  describe 'about page' do
    it 'should have content "about us"' do
      visit about_path
      expect(page).to have_content('about us')
    end
  end
  
end
