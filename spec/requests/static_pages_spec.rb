require 'rails_helper'

#_ RSpec.describe "StaticPages", type: :request do
#_   describe "GET /static_pages" do
#_     it "works! (now write some real specs)" do
#_       get static_pages_index_path
#_       expect(response).to have_http_status(200)
#_     end
#_   end
#_ end
describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
#_       visit '/static_pages/home'
      visit   home_path
#_       page.should have_content('Sample App')
      expect(page).to have_content('Sample App')
    end
  end


  describe "Help page" do
    it "should have the content 'Help'" do
#_       visit '/static_pages/help'
      visit   help_path
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
#_       visit '/static_pages/about'
      visit   about_path
      expect(page).to have_content('About Us')
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
#_       visit '/static_pages/contact'
      visit   contact_path
      expect(page).to have_content('Contact')
    end
  end

  describe "Title check" do
    it "should have the right title" do
#_       visit '/static_pages/home'
      visit  home_path
#_       page.should have_selector('title',  :text => "Ruby on Rails Tutorial Sample App | Home")
#_       expect(page).to have_title("title",  text => "Ruby on Rails Tutorial Sample App | Home")
      expect(page).to have_title "Ruby on Rails Tutorial Sample App | Home"
    end
  end


end
