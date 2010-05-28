require 'spec_helper'

describe "/admins/login" do
  before(:each) do
    render 'admins/login'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/admins/login])
  end
end
