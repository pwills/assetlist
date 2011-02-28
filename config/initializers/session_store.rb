# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_assets_session',
  :secret      => '535388d7587e2c4827173c6c485f84d76523c7302ec936057548df40d5a1a95d1d3db0d141e1a5bd41d1dcbe710d18a264d4db2e81421476a8cb4196700f9b02'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
