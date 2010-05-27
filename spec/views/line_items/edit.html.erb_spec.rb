require 'spec_helper'

describe "/line_items/edit.html.erb" do
  include LineItemsHelper

  before(:each) do
    assigns[:line_item] = @line_item = stub_model(LineItem,
      :new_record? => false,
      :product_id => 1,
      :order_id => 1,
      :quantity => 1,
      :total_price => 9.99
    )
  end

  it "renders the edit line_item form" do
    render

    response.should have_tag("form[action=#{line_item_path(@line_item)}][method=post]") do
      with_tag('input#line_item_product_id[name=?]', "line_item[product_id]")
      with_tag('input#line_item_order_id[name=?]', "line_item[order_id]")
      with_tag('input#line_item_quantity[name=?]', "line_item[quantity]")
      with_tag('input#line_item_total_price[name=?]', "line_item[total_price]")
    end
  end
end
