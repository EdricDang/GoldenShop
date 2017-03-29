require 'rails_helper'

describe ProductsController do

  describe '#index' do
    def do_request()
      get :index
    end
  end

  describe '#new' do
    def do_request
      get :new
    end

    let!(:user) { create(:user) }
    before { sign_in user }

    it 'displays product new form' do
      do_request
      expect(response).to render_template :new
    end
  end

  describe '#create' do
    def do_request
      post :create, product: product_attributes
    end
    let!(:user) { create(:user) }
    before { sign_in user }
    let!(:product_attributes) { attributes_for(:product, user_id: user.id) }
    it 'creates a product' do
      expect{ do_request }.to change{ Product.count }.from(0).to(1)
      expect(response).to redirect_to :action => :index
    end
  end

  describe '#edit' do
    def do_request
      get :edit, id: product.id
    end

    let!(:user)    { create(:user) }
    let!(:product)  { create(:product) }

    before { sign_in user }

    it 'renders view :edit' do
      do_request
      expect(response).to render_template :edit
    end
  end

end
