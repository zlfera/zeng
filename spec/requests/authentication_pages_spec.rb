require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }
  describe "authentication" do
    before {visit signin_path}
    it {should(have_content('sign in'))}
    it {should(have_title('sign in'))}
    it {should(have_selector('div.alert.alert-error',text: 'Invalid'))} 
  end
  describe 'sign in' do
    before {visit signin_path}
    describe 'with invalid information' do
      before {click_button 'Sign in'}
      it {should(have_title('sign in'))}
      it {should(have_selector('div.alert.alert-error',text: 'Invalid'))}
      describe 'after visting another page' do
        before {click_link 'home'}
        it {should_not(have_selector('div.alert.alert-error'))}
      end
    end
    describe 'with valid' do
      let(:user) {FactoryGirl.create(:user)}
      before do
        fill_in('Email',with: user.email.upcase)
        fill_in('Password',with: user.password)
        click_button('Sign in')
      end
      it {should(have_title(user.name))}
      it {should(have_link('profile',href: user_path(user)))}
      it {should(have_link('sign out',href: signout_path))}
      it {should_not(have_link('sign in',href: signin_path))}
    end
  end
end
