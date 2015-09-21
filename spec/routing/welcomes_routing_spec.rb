require "rails_helper"

RSpec.describe WelcomesController, type: :routing do
  describe "routing" do
    it "routes to #new" do
      expect(:get => "/welcomes").to route_to("welcomes#index")
      # expect(:get => "/users").to route_to("users#index")
    end

  end
end
