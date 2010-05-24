# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_depots_session',
  :secret      => 'a815f85222ceeeab711a838f7d986e6ba35819ccaa7833b508d54369c5998da75f538adecf1b6a1cf42e67d612ba71ea529325e70da59f71df8bd8887f82de28'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
 ActionController::Base.session_store = :active_record_store
