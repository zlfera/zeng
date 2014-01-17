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
    it do
      should have_content 'sign up'
    end
  end
end
