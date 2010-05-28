require 'spec_helper'

describe "/users/index.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:users] = [
      stub_model(User,
        :name => "value for name",
        :hashed_password => "value for hashed_password",
        :salt => "value for salt"
      ),
      stub_model(User,
        :name => "value for name",
        :hashed_password => "value for hashed_password",
        :salt => "value for salt"
      )
    ]
  end

  it "renders a list of users" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for hashed_password".to_s, 2)
    response.should have_tag("tr>td", "value for salt".to_s, 2)
  end
end
