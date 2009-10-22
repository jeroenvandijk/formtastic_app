# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_formtastic_app_session',
  :secret      => '5149d52b95389d433765563193a30bb8ecdf3949fc0d18813cc349985f2618075a471ea635a422f11c1f5638a48bb542a308552da39a96b898ba3f4cdc6d1816'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
