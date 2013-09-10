describe Show do

  describe "visiting the shows pages" do
    subject { page }

    describe "shows index page" do
      before { visit shows_path }

      it { should have_title('animeList | All shows') }
      it { should have_selector('h1', text: 'All shows') }
    end

    describe "shows new page" do
      before { visit new_show_path }

      it { should have_title('animeList | New show') }
      it { should have_selector('h1', text: 'New show') }
    end
  end

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
      @dupe_show = FactoryGirl.build(:show)
      @dupe_show.should_not be_valid
    end

    it "should bounce new shows with an empty description" do
      @new_show.description = nil
      @new_show.should_not be_valid
    end

    it "should bounce new shows with no image url" do
      @new_show.image_url = nil
      @new_show.should_not be_valid
    end

    it "should bounce new shows without the total episodes filled in" do
      @new_show.total_episodes = nil
      @new_show.should_not be_valid
    end

  end

end
