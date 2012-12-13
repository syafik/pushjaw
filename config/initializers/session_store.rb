# Be sure to restart your server when you modify this file.

Pushjaw::Application.config.session_store :cookie_store, key: '_pushjaw_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Pushjaw::Application.config.session_store :active_record_store
