# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_logorrhea_session',
  :secret      => 'c7a7066a13894221ac41248f5b39d683db20529942f8702069c9e985db6fc0d3096435eb32a412c7bcda0b5475da070e5d32ec0b396697e0bd88b4e1760fc026'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
