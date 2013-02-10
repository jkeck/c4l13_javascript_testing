require "watir_helper"

describe "Facets", :javascript => true do
  before :all do 
<<<<<<< HEAD
    @browser = Watir::Browser.new
  end
  after :all do
    @browser.close if @browser
  end
  it "should exist on the home page and lead to a search result" do
    @browser.goto(root_path)
=======
    # need to start a rails app here
    @browser = Watir::Browser.new
  end
  after :all do
    # need to close rails app here
    @browser.close if @browser
  end
  it "should exist on the home page and lead to a search result" do
    @browser.goto(root_url(:host => "localhost", :port => "3000"))
>>>>>>> Add watir feature for facets.
    @browser.h5(:text, "Topic").should exist
    @browser.h5(:text, "Topic").click
    
    @browser.link(:text, "Japanese drama").should exist
    @browser.link(:text, "Japanese drama").click
    @browser.text.should include "1 - 2 of 2"
  end
end