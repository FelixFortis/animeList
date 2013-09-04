require 'spec_helper'

describe "static pages" do

  subject { page }

  describe "home page" do
    before { visit root_path }

    it { should have_title('animeList | Home') }
    it { should have_selector('h1', text: 'Welcome to animeList') }
  end

  describe "about page" do
    before { visit about_path }

    it { should have_title('animeList | About') }
    it { should have_selector('h1', text: 'About animeList') }
  end

  describe "contact page" do
    before { visit contact_path }

    it { should have_title('animeList | Contact') }
    it { should have_selector('h1', text: 'Contact animeList') }
  end
end
