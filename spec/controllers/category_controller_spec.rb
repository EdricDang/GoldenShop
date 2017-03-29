require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  before(:each) do
    request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
  end
end