require 'spec_helper'

describe "/users/show.html.erb" do
  include UsersHelper
  before(:each) do
    assigns[:user] = @user = stub_model(User,
      :name => "value for name",
      :hashed_password => "value for hashed_password",
      :salt => "value for salt"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ hashed_password/)
    response.should have_text(/value\ for\ salt/)
  end
end
