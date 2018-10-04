require 'rails_helper'

# RSpec.describe "urls/new.html.erb", type: :view do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
RSpec.describe "urls/new.html.erb", type: :view do
  it "let you generate a short url" do
    # Url.create(long_url: 'https://www.google.com/', short_url: 'google')
    # assign(Url.create(long_url: 'https://www.google.com/', short_url: 'google'))
    # assign :url_long_url, "https://www.google.com/"
    # assign :url_short_url, "google"
    # render '/urls'
    assign :urls, Url.create!(:long_url => "https://www.google.com", :short_url => "google")
    # assign (:url, [
    #   Url.create!(:long_url => "https://www.google.com", :short_url => "google")
    #   ])
    # assign :url_long_url, "https://www.google.com/"
    # assign :short_url, "google"
    render
    expect(rendered).to match "https://www.google.com"
    expect(rendered).to match "google"
  end
end
