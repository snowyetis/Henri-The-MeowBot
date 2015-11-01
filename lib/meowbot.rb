#!/usr/bin/ruby
require "rubygems"
require "bundler"
require "twitter"
require "yaml"
require "sqlite3"

class MeowBot
  #filename = File.expand_path File.dirname(__FILE__) + "/config/twitter.yml"
  filename =  "/Users/josephcarlson/Sites/Bots/MeowBot/config/twitter.yml"

  $config = YAML.load_file(filename)
  $imageDir = "/Users/josephcarlson/Sites/Bots/MeowBot/assets/images/"

  def test()
    puts $imageDir
    imageList = Dir.glob $imageDir + "/*.jpg"
    puts imageList.sample
  end

  def self.retrieve_images()
    @imageList = Dir.glob $imageDir + "/*.jpg"
    return @imageList
  end

  def self.send_tweet()

    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = $config["consumer_key"]
      config.consumer_secret     = $config["consumer_secret"]
      config.access_token        = $config["access_token"]
      config.access_token_secret = $config["access_token_secret"]
    end

    @imageList = Dir.glob $imageDir + "/*.jpg"

    client.search("I want a cat").take(10).each do |tweet|
      client.update_with_media("@" + tweet.user.screen_name + " Hi I'm Henri! I will be your cat.", File.new(imageList.sample))
    end
  end

  def save_data(tweet)
      begin
        db = SQLite3::Database.open "meow-dev-db.db"

        db.execute "INSERT INTO userdata(twitterName) VALUES (" + tweet.user.screen_name + ")"

      rescue SQLite3::Exception => e
        puts "SQLite3 exception occurred" + e
      ensure
        db.close if db
      end
  end

end
