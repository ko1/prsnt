# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_prsnt_session',
  :secret      => '655557987f674aeb0c2edf993fd104693b9540333e1d0bced045c4fb59952f1ecf81a8bdf1d37aab4355d892d885550c954282a5c211809eb67f71f41d99716a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
