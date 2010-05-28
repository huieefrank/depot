require 'spec_helper'

describe "/users/edit.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:user] = @user = stub_model(User,
      :new_record? => false,
      :name => "value for name",
      :hashed_password => "value for hashed_password",
      :salt => "value for salt"
    )
  end

  it "renders the edit user form" do
    render

    response.should have_tag("form[action=#{user_path(@user)}][method=post]") do
      with_tag('input#user_name[name=?]', "user[name]")
      with_tag('input#user_hashed_password[name=?]', "user[hashed_password]")
      with_tag('input#user_salt[name=?]', "user[salt]")
    end
  end
end
