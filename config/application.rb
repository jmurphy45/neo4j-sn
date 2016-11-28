require_relative 'boot'

require "rails"
# require 'rails/all'
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
# require "active_record/railtie"
require 'neo4j/railtie'
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Neo4jSn
  class Application < Rails::Application
    
    config.generators do |g|
      g.orm             :neo4j
    end

    # Configure where the embedded neo4j database should exist
    # Notice embedded db is only available for JRuby
    # config.neo4j.session_type = :embedded_db  # default #server_db
    # config.neo4j.session_path = File.expand_path('neo4j-db', Rails.root)
    config.neo4j.session_path = 'http://neo4j:helloworld81@localhost:7474'
    config.neo4j.session_options = {initialize: { ssl: { verify: true }}}
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
