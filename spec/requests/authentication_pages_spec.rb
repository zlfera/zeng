require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }
  describe "authentication" do
    before {visit signin_path}
    it {should(have_content('sign in'))}
    it {should(have_title('sign in'))}
  end
end
