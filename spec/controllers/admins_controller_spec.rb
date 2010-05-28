require 'spec_helper'

describe AdminsController do

  #Delete these examples and add some real ones
  it "should use AdminsController" do
    controller.should be_an_instance_of(AdminsController)
  end


  describe "GET 'login'" do
    it "should be successful" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'logout'" do
    it "should be successful" do
      get 'logout'
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end
end
