require 'spec_helper'

describe "/line_items/index.html.erb" do
  include LineItemsHelper

  before(:each) do
    assigns[:line_items] = [
      stub_model(LineItem,
        :product_id => 1,
        :order_id => 1,
        :quantity => 1,
        :total_price => 9.99
      ),
      stub_model(LineItem,
        :product_id => 1,
        :order_id => 1,
        :quantity => 1,
        :total_price => 9.99
      )
    ]
  end

  it "renders a list of line_items" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 9.99.to_s, 2)
  end
end
