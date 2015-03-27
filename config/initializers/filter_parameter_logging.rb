# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.
Rails.application.config.filter_parameters += [:password]

Figaro.require_keys("twitter_app_id", "twitter_app_secret")