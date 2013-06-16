require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module FbSearch
  class Application < Rails::Application

    # Enable the asset pipeline
    config.assets.enabled = true

    config.generators do |g|
      g.template_engine :haml
      g.stylesheets :scss
      g.test_framework :rspec, fixtures: false, fixture_replacement: :factory_girl
    end

  end
end
