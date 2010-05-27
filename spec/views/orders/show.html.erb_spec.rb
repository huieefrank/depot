require 'spec_helper'

describe "/orders/show.html.erb" do
  include OrdersHelper
  before(:each) do
    assigns[:order] = @order = stub_model(Order,
      :name => "value for name",
      :address => "value for address",
      :email => "value for email",
      :pay_type => "value for pay_type"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ address/)
    response.should have_text(/value\ for\ email/)
    response.should have_text(/value\ for\ pay_type/)
  end
end
