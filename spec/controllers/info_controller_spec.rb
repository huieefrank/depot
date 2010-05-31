require 'spec_helper'

describe InfoController do

  #Delete these examples and add some real ones
  it "should use InfoController" do
    controller.should be_an_instance_of(InfoController)
  end


  describe "GET 'who_bought'" do
    it "should be successful" do
      get 'who_bought'
      response.should be_success
    end
  end
end
