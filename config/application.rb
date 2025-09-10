require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Speedrail
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Allow cross origin requests (configure for your specific domains in production)
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        if Rails.env.development?
          origins '*' # Allow all origins in development
        else
          # Configure specific domains for production
          origins Rails.application.credentials.allowed_origins || []
        end
        resource '*',
                 headers: :any,
                 methods: [:get, :post, :patch, :put, :delete, :options],
                 credentials: false
      end
    end

    # background jobs
    config.active_job.queue_adapter = :delayed

    # mailers via postmark
    config.action_mailer.default_url_options = { host: Rails.application.credentials.base_url }
    config.action_mailer.default_options = { from: Rails.application.credentials.admin_email }
    config.action_mailer.delivery_method = :postmark
    config.action_mailer.postmark_settings = { api_token: Rails.application.credentials.postmark_api_token }

    # serve images from asset pipeline in mailers
    config.asset_host = Rails.application.credentials.base_url

    # customize generators
    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
      g.scaffold_controller :scaffold_controller # https://github.com/activeadmin/inherited_resources/issues/195#issuecomment-3556266
      g.jbuilder false # disables json 'jbuilder' views, but still leaves json endpoint format
      g.view_specs false
      g.helper_specs false
      g.routing_specs false
      g.assets false # stylesheets
      g.helper true
    end
  end
end
