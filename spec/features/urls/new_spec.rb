require "rails_helper"

RSpec.feature "New", :type => :feature do
  scenario "User creates a new form" do
    visit "/urls/new"
    fill_in "url[long_url]", :with => "https://www.google.com/"
    fill_in "url[short_url]", :with => "google"
    click_button "Create Url"
    expect(page).to have_text("google")
  end
end
