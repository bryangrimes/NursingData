require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Nursing App" }

  describe "Home page" do

    it "should have the content 'Home Sweet Home'" do
      visit '/static_pages/home'
      page.should have_content('Home Sweet Home')
    end

  end

  describe "About page" do

    it "should have the content 'Obi Wan'" do
      visit '/static_pages/about'
      page.should have_content('Obi Wan')
    end

  end
end