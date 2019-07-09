#Required Files
require_relative "album_reviews/version"
require_relative "album_reviews/scraper"
require_relative "album_reviews/cli"

#Required Gems
require 'pry'
require 'nokogiri'
require 'open-uri'

module AlbumReviews
  class Error < StandardError; end
  # Your code goes here...
end
