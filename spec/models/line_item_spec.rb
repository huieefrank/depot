require 'spec_helper'

describe LineItem do
  before(:each) do
    @valid_attributes = {
      :product_id => 1,
      :order_id => 1,
      :quantity => 1,
      :total_price => 9.99
    }
  end

  it "should create a new instance given valid attributes" do
    LineItem.create!(@valid_attributes)
  end
end
