require 'spec_helper'

describe "static pages" do

  subject { page }

  describe "home page" do
    it "should have the title 'animeList | Home'" do
      visit root_path
      it.should have_selector('title', text: 'animeList | Home')
    end

    it "should have the h1 'Welcome to animeList'" do
      visit root_path
      it.should have_selector('h1', text: 'Welcome to animeList')
    end
  end

  describe "about page" do
    it "should have the title 'animeList | About'" do
      visit about_path
      it.should have_selector('title', text: 'animeList | Home')
    end

    it "should have the h1 'Contact animeList'" do
      visit about_path
      it.should have_selector('h1', text: 'About animeList')
    end
  end

  describe "contact page" do
    it "should have the title 'animeList | Contact'" do
      visit contact_path
      it.should have_selector('title', text: 'animeList | Home')
    end

    it "should have the h1 'Contact animeList'" do
      visit contact_path
      it.should have_selector('h1', text: 'Contact animeList')
    end
  end
end
