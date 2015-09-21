require 'rails_helper'

RSpec.describe UsersController, type: :controller do




  let(:valid_attributes) {
    { "first" => "first", "last" => "last"}

  }

  describe "GET #new" do

    it "should be successful" do
      get :new
      response.should be_success
    end
    it "should create a book object" do
      get :new
      assigns(:user).should_not be_nil
    end

    it "assigns a new user as @user" do
      get :new
      expect(assigns(:user)).to be_a_new(User)
    end
  end


  describe "GET #index" do
    it "assigns all users as @users" do
      user = User.create! valid_attributes
      get :index
      expect(assigns(:users)).to eq([user])
    end
  end

  describe "GET #show" do
    it "assigns the requested user as @user" do
      user = User.create! valid_attributes
      get :show, {:id => user.to_param}
      expect(assigns(:user)).to eq(user)
    end
  end


  describe "POST #create" do
    context "with valid params" do
      it "creates a new User" do
        expect {
          post :create, {:user => valid_attributes}
        }.to change(User, :count).by(1)
      end

      it "redirects to list" do
        post :create, {:user => valid_attributes}
        expect(response).to redirect_to users_path
      end

      it "assigns a newly created user as @user" do
        post :create, {:user => valid_attributes}
        expect(assigns(:user)).to be_a(User)
        expect(assigns(:user)).to be_persisted
      end

    end

  end
end
