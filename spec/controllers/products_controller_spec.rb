require 'spec_helper'

describe ProductsController do
	integrate_views


  #Delete these examples and add some real ones
  it "should use ProductsController" do
    controller.should be_an_instance_of(ProductsController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
  	before(:each) do
		@product = Factory(:product)

		Product.stub!(:find, @product.id).and_return(@product)
	  end    	
    it "should be successful" do
      
      get 'show',:id =>@product
      response.should be_success
    end
  end

  describe "GET 'new'" do
  	
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
 

  describe "GET 'edit'" do
  	before(:each) do
		@product = Factory(:product)

		Product.stub!(:find, @product.id).and_return(@product)
	 end
    it "should be successful" do
      get 'edit', :id=>@product
      response.should be_success
    end
  end
end
