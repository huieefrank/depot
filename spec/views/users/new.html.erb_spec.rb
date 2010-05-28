require 'spec_helper'

describe "/users/new.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:user] = stub_model(User,
      :new_record? => true,
      :name => "value for name",
      :hashed_password => "value for hashed_password",
      :salt => "value for salt"
    )
  end

  it "renders new user form" do
    render

    response.should have_tag("form[action=?][method=post]", users_path) do
      with_tag("input#user_name[name=?]", "user[name]")
      with_tag("input#user_hashed_password[name=?]", "user[hashed_password]")
      with_tag("input#user_salt[name=?]", "user[salt]")
    end
  end
end
