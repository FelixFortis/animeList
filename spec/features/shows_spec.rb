require 'spec_helper'

describe Show do

  describe "new shows page" do

    before :each do
      @new_show = FactoryGirl.create(:show)
    end

    it "should accept new shows with valid credentials" do
      @new_show.should be_valid
    end

    it "should bounce new shows with an empty name" do
      @new_show.name = nil
      @new_show.should_not be_valid
    end

    it "should bounce new shows with a duplicate name" do
      @new_show.name = "Aquarion Evol"
      @new_show.should_not be_valid
    end

    it "should bounce new shows with an empty description" do
      @new_show.description = nil
      @new_show.should_not be_valid
    end

    it "should bounce new shows with no image url" do
      @new_show.inage_url = nil
      @new_show.should_not be_valid
    end

    it "should bounce new shows without the total episodes filled in" do
      @new_show.total_episodes = nil
      @new_show.should_not be_valid
    end

  end

end
