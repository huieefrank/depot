require 'spec_helper'

describe "/line_items/show.html.erb" do
  include LineItemsHelper
  before(:each) do
    assigns[:line_item] = @line_item = stub_model(LineItem,
      :product_id => 1,
      :order_id => 1,
      :quantity => 1,
      :total_price => 9.99
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/9\.99/)
  end
end
