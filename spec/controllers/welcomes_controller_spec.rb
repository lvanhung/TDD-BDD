require 'rails_helper'

RSpec.describe WelcomesController, type: :controller do
  describe "GET #index" do
    it "should access succesfully" do
      get :index
       #response.should be_success
      expect(response).to have_http_status(200)
    end
  end

end
