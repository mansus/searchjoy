require "searchjoy/search"
require "searchjoy/engine"
require "searchjoy/version"

require "chartkick"
require "groupdate"

module Searchjoy
  # time zone
  mattr_reader :time_zone
  def self.time_zone=(time_zone)
    @@time_zone = time_zone.is_a?(String) ? ActiveSupport::TimeZone.new(time_zone) : time_zone
  end

  # top searches
  mattr_accessor :top_searches
  self.top_searches = 100

  # conversion name
  mattr_accessor :conversion_name
end