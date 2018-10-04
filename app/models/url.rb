class Url < ApplicationRecord
  validates :long_url, presence: true,
            :format => { :with => URI.regexp, message: "Invalid Url"}
  validates :short_url, presence: true

  after_initialize :generate_short_url

    def self.retrieve_short_url(url)
      x = Url.find_by(long_url: url)
      if x == nil
        return nil
      else
        return x.short_url
      end
    end

    def generate_short_url
      # If user didn't specify a short urls
      self.short_url == SecureRandom.base64[0..8]
      # Else, use theirs
    end


end
