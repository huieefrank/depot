# == Schema Information
# Schema version: 20100514065644
#
# Table name: products
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  image_url   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Product do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :description => "value for description",
      :image_url => "value.jpg",
      :price =>10.00
    }
  end

  it "should create a new instance given valid attributes" do
    Product.create!(@valid_attributes)
  end
  
  it "should require a title " do
  	no_title_product = Product.new(@valid_attributes.merge(:title=>""))
  	no_title_product.should_not be_valid
  end
  
  
  it "should require a description" do
  	no_description = Product.new(@valid_attributes.merge(:description =>""))
  	no_description.should_not be_valid
  end
  
  it "should require a image_url " do
  	no_imgurl_product =Product.new(@valid_attributes.merge(:image_url=>""))
  	no_imgurl_product.should_not be_valid
  end
  
  it "should only accept positive numeric price " do
  	no_positive_price_product= Product.new(@valid_attributes.merge(:price=>-0.01))
  	no_positive_price_product.should_not be_valid
  end
  
  it "should reject duplicate title  " do
  	Product.create!(@valid_attributes)
  	product_with_duplicate_title = Product.new(@valid_attributes)
  	product_with_duplicate_title.should_not be_valid
  end
  
  it "should reject no stardward image url " do
  	product_with_nostardward_imageurl = Product.new(@valid_attributes.merge(:image_url=>"test"))
  	product_with_nostardward_imageurl.should_not be_valid
  end
  
  describe "find_products_for_sale method" do
  	
  	it "should be true if has product " do
  		Product.create!(@valid_attributes)
  		Product.find_products_for_sale.should be_true
  	end
  	
  	it "should be ordered by title if has more products" do
  		Product.create!(@valid_attributes)
  		@p=Product.create(@valid_attributes.merge(:title=>"test title"))  		
  		Product.find_products_for_sale.first.id.should be_equal(2)
  	end
  		
  	
  end
  	
      	
end


