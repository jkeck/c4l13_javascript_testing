require "watir_helper"

describe "Facets", :javascript => true do
  before :all do 
    @browser = Watir::Browser.new
  end
  after :all do
    @browser.close if @browser
  end
  it "should exist on the home page and lead to a search result" do
    @browser.goto(root_path)
    @browser.h5(:text, "Topic").should exist
    @browser.h5(:text, "Topic").click
    
    @browser.link(:text, "Japanese drama").should exist
    @browser.link(:text, "Japanese drama").click
    @browser.body(:class, "blacklight-catalog-index").should exist
  end
end