require 'spec_helper'

describe "Facets", :type => :feature do
  it "should exist on the home page and lead to a search result" do
    visit '/'
    page.should have_content "Japanese drama"
    click_link "Japanese drama"
    page.should have_content "1 - 2 of 2"
  end
end