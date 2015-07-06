#!/usr/bin/env ruby

require 'Twitter'
require 'json'
require 'rubygems'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "zBaGs8UQoKkAY0Xpl6m37xkTS"
  config.consumer_secret     = "lRtF3amS0K5qadckZy0n4JXi6uM115aGjcqKZEwclyppMqdGrO"
  config.access_token        = "3357987406-vsaWeK5NusKWtPiRBML6M8rywhLB8oYQvlN5nLw"
  config.access_token_secret = "OkL6pgctMvzRj4uWGVftqAlcG1BzxPcRp2CvNHtgKkLle"
end

# file = File.new("/Users/josephcarlson/documents/Cat.txt", "w")
# catTweets = Hash.new
# Search for the hashtag "#hashtag". Grab the last 100 tweets

 client.search("I want a cat").take(10).each do |tweet|
  # Push all the tweets collected one by one to the default output (command-line, usually)
  # file.puts("TweetID : " + tweet.user.screen_name + " " + tweet.text)
    client.update("@"+tweet.user.screen_name + " Hi I'm Henri, I will be your cat!")
 end
