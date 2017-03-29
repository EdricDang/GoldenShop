require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  before(:each) do
    request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
  end

  describe "GET new" do
    it "assigns a blank products to the view" do
      get :new
      expect(assigns(:product)).to be_a_new(Product)
    end
  end
end