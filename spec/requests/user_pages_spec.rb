require 'rails_helper'

RSpec.describe "UserPages", type: :request do

  subject {page}

  describe "GET /user_pages" do
    before { visit signup_path }
#_     it "works! (now write some real specs)" do
#_       get user_pages_index_path
#_       expect(response).to have_http_status(200)
      it { should have_content 'Sign up' }
      it { should have_title   'Sign up' }

#_     end
  end

end
