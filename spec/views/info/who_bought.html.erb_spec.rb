require 'spec_helper'

describe "/info/who_bought" do
  before(:each) do
    render 'info/who_bought'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/info/who_bought])
  end
end
