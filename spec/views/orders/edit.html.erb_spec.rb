require 'spec_helper'

describe "/orders/edit.html.erb" do
  include OrdersHelper

  before(:each) do
    assigns[:order] = @order = stub_model(Order,
      :new_record? => false,
      :name => "value for name",
      :address => "value for address",
      :email => "value for email",
      :pay_type => "value for pay_type"
    )
  end

  it "renders the edit order form" do
    render

    response.should have_tag("form[action=#{order_path(@order)}][method=post]") do
      with_tag('input#order_name[name=?]', "order[name]")
      with_tag('textarea#order_address[name=?]', "order[address]")
      with_tag('input#order_email[name=?]', "order[email]")
      with_tag('input#order_pay_type[name=?]', "order[pay_type]")
    end
  end
end
