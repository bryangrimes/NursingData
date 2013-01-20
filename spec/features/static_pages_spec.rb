require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Home Sweet Home'" do
      visit '/static_pages/home'
      page.should have_content('Home Sweet Home')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Nursing App | Home")
    end
  end

  describe "About page" do

    it "should have the content 'Obi Wan'" do
      visit '/static_pages/about'
      page.should have_content('Obi Wan')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Nursing App | About")
    end
  end
end