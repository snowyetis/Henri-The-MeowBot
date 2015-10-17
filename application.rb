require "rubygems"
require "bundler"
require "twitter"
require "yaml"

# class TwitterBot
  filename = File.expand_path File.dirname(__FILE__) + "/config/twitter.yml"

  $config = YAML.load_file(filename)
  $imageDir = File.expand_path File.dirname(__FILE__) + "/assets/images/"

  def test()
    puts $imageDir
    imageList = Dir.glob $imageDir + "/*.jpg"
    puts imageList.sample
  end

  def send_tweet()

    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = $config["consumer_key"]
      config.consumer_secret     = $config["consumer_secret"]
      config.access_token        = $config["access_token"]
      config.access_token_secret = $config["access_token_secret"]
    end

    imageList = Dir.glob $imageDir + "/*.jpg"

    client.search("I want a cat").take(10).each do |tweet|
      client.update_with_media("@" + tweet.user.screen_name + " Hi I'm Henri! I will be your cat.", File.new(imageList.sample))
    end
      puts "End of script"
  end
# end

send_tweet()
