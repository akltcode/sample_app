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
      visit '/static_pages/home'
#_       page.should have_content('Sample App')
      expect(page).to have_content('Sample App')
    end
  end


  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
#_       page.should have_content('Help')
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/help'
#_       page.should have_content('Help')
      expect(page).to have_content('Help')
    end
  end

end
