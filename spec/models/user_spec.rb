require 'spec_helper'

describe User do
  before do
    @user=User.new(name: 'example',email: 'example@zlf.com')
  end
  subject {@user}
  it {should respond_to :name}
  it {should respond_to :email}
  it {should be_valid}
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
  describe 'when email is valid' do
    it 'should be_valid' do
      addresses = %w[zlfera@gmail.com zlf@msn.com]
      addresses.each do |address|
        @user.email=address
        it {should_not be_valid}
      end
    end
  end
  
  
end
