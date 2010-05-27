require 'spec_helper'

describe Order do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :address => "value for address",
      :email => "value for email",
      :pay_type => "value for pay_type"
    }
  end

  it "should create a new instance given valid attributes" do
    Order.create!(@valid_attributes)
  end
end
