default: &default
  SECRET_KEY_BASE: <%= ENV['SECRET_KEY_BASE'] %>
  twiiter_consumer_key: <%= ENV['TWITTER_CONSUMER_KEY'] %>
  twitter_consumer_secret: <%= ENV['TWITTER_CONSUMER_SECRET'] %> 
  twitter_access_token: <%= ENV['TWITTER_ACCESS_TOKEN'] %>
  twitter_access_token_secret: <%= ENV['TWITTER_ACCESS_TOKEN_SECRET'] %>

  development:
    <<: *default
  test:
    <<: *default
  staging:
    <<: *default
  production:
    <<: *default
