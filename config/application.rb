require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module GraduatingApp
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.assets.enabled = true

    config.generators do |g|
      g.stylesheets = false
      g.javascripts = false
      g.factory_girl = false
    end
  end
end
