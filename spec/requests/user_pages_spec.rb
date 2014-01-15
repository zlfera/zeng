require 'spec_helper'

describe "UsersPages" do
  subject {page}

  describe "sigup page" do
    before {visit signup_path}
    it do
      should have_content 'sign up'
    end
  end
end
