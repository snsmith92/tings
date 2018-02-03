require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "85a57bd62b3263391b4c7947e6d7b62cb210cec69b1231ea373b333602215a14"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
ActiveSupport.on_load(:active_record) do
  extend Dragonfly::Model
  extend Dragonfly::Model::Validations
end
