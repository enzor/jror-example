# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jror-example_session',
  :secret      => 'e227610fcb03184c61a02ce3ef68a71fbacc63e0d1ef0daaade8a47e4e3c01725d4cd83d0cd3510f0708fc830e69cd1e721300445766be7e127aa9b144a1ef3c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

if defined? JRuby::Rack
  require 'action_controller/session/java_servlet_store'
  ActionController::Base.session_store = :java_servlet_store
end
