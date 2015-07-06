#!/usr/bin/env ruby
require 'Twitter'
require 'json'
require 'rubygems'

client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "zBaGs8UQoKkAY0Xpl6m37xkTS"
    config.consumer_secret     = "lRtF3amS0K5qadckZy0n4JXi6uM115aGjcqKZEwclyppMqdGrO"
    config.access_token        = "3357987406-vsaWeK5NusKWtPiRBML6M8rywhLB8oYQvlN5nLw"
    config.access_token_secret = "OkL6pgctMvzRj4uWGVftqAlcG1BzxPcRp2CvNHtgKkLle"

    client.upate_with_media("Hi I'm Henri here's a pic.", File.absolute_path("./assets/images/IMG_5823.JPG"))
end
  # imageList =  Dir.entries("./assets/images/").each { |f| !File.directory? f}
