require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe "products#index action" do
    it "should show the index page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "product#new action" do
    it "should show the form to enter a new product" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "produc#create action" do
    it "should create an entry of the product in the database" do
      post :create, params: {product: {name: 'NAS', description: 'NAS Storage'}}
      expect(response).to redirect_to products_path

      product = Product.last
      product_id = product.id
      expect(product.name).to eq('NAS')
      expect(product.description).to eq('NAS Storage')
      expect(product_id).to eq product.id
    end

    it "should handle the validations properly" do
      product_count = Product.count
      post :create, params: {product: {name: ' ', description: ' '}}
      expect(response).to have_http_status(:unprocessable_entity)
      expect(product_count).to eq Product.count
    end
  
  end

  describe "product#show action" do
    it "show the detail page of the selected product" do
      post :create, params: {product: {name: 'NAS', description: 'NAS Storage'}}
      product=Product.last
      get :show,  id: product.id
      expect(response).to have_http_status(:success)
    end

    ## it "should get the error if the product s not found" do
      ## get :show, params: {id: 9999}
      ## expect(response).to have_http_status(:not_found)
    ## end
 end

end 
