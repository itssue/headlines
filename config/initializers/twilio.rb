Twilio.configure do |config|
  config.account_sid = ENV['ACCOUNT_SID']
  config.auth_token = ENV['AUTH_TOKEN']
end

# http://twilio-ruby.readthedocs.org/en/latest/usage/messages.html
# https://github.com/twilio/twilio-ruby