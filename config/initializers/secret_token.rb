# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# Mt::Application.config.secret_key_base = 'e1e7979a1401c9f3246137ca0059d851c8d27981e3469221a1c00fee52cc6e4d5cc7a40b280fc26eaeeaabc0c0ba0e774bf552d8719685e39b2eeefac88767ac'

require 'securerandom'

# from http://ruby.railstutorial.org/chapters/static-pages?version=4.0#top
def secure_token
  ## default token_file is root/.secret
  token_file = Rails.root.join('.secret')
  ## use it if is exists
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

Mt::Application.config.secret_key_base = secure_token
