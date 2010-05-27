require 'spec_helper'

describe "/orders/index.html.erb" do
  include OrdersHelper

  before(:each) do
    assigns[:orders] = [
      stub_model(Order,
        :name => "value for name",
        :address => "value for address",
        :email => "value for email",
        :pay_type => "value for pay_type"
      ),
      stub_model(Order,
        :name => "value for name",
        :address => "value for address",
        :email => "value for email",
        :pay_type => "value for pay_type"
      )
    ]
  end

  it "renders a list of orders" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for address".to_s, 2)
    response.should have_tag("tr>td", "value for email".to_s, 2)
    response.should have_tag("tr>td", "value for pay_type".to_s, 2)
  end
end
