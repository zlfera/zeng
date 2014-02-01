require 'spec_helper'

describe User do
  before do
    @user=User.new(name: 'example',email: 'example@zlf.com',password: '123456789',password_confirmation: '123456789')
  end
  subject {@user}
  it {should respond_to :name}
  it {should respond_to :email}
  it {should respond_to :password}
  it {should respond_to :remember_token}
  it {should be_valid}
  
  describe 'remember_token' do
    before {@user.save}
      its(:remember_token) { should_not be_blank  }
  end

  describe 'when name is not present' do
    before {@user.name=' '}
    it {should_not be_valid}
  end
  describe 'when email is not present' do
    before {@user.email=''}
    it {should_not be_valid}
  end
  describe 'when name is too long' do
    before {@user.name='a'*51}
    it {should_not be_valid}
  end
  
  
  
end
