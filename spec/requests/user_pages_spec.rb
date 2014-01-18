require 'spec_helper'

describe "UsersPages" do
  subject {page}

  describe 'profile' do
    let(:user) {FactoryGirl.create(:user)}
    before {visit user_path user}
    it {should have_content(user.name)}
    it {should have_title(user.name)}
  end


  describe "sigup page" do
    before {visit signup_path}
    let(:submit) {'create my account'}
    describe 'with valid information' do
      it 'should not create user' do
        expect {click_button submit}.not_to change(User,:count)
      end
    end
    



    it do
      should have_content 'sign up'
    end

    

  end
end
