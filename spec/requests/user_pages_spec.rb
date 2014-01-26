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
#    describe 'with invalid information' do
#      it 'should not create user' do
#        expect {click_button submit}.not_to change(User,:count)
#      end
#    end
    describe 'with valid information' do
      before do
        fill_in('Name',with: 'example user')
        fill_in('Email',with: 'example@user.com')
        fill_in('Password',with: 'password')
        fill_in('Confirmation',with: 'password')
      end
      it "should create user" do
        expect {click_button(submit).to(change(User,:count).by(10))}
      end
    end
    



    it do
      should have_content 'sign up'
    end

    

  end
end
