require 'spec_helper'

describe User do
  before :each do
    @user = FactoryGirl.create(:user)
  end

  it "accepts a new user with valid credentials" do
    @user.should be_valid
  end

  it "declines new users with an empty username" do
    @user.username = ""
    @user.should_not be_valid
  end

  it "declines new users with an invalid email" do
    @user.email = "millhouse"
    @user.should_not be_valid
  end

  it "declines new users with a blank email" do
    @user.email = ""
    @user.should_not be_valid
  end

  it "declines new users with an empty password" do
    @user.password = ""
    @user.should_not be_valid
  end

  it "declines new users with an invalid password" do
    @user.password = "nil"
    @user.should_not be_valid
  end
end