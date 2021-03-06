require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module InstaClone
  class Application < Rails::Application
    config.load_defaults 5.2
    config.time_zone = 'Rangoon'
    config.active_record.default_timezone = :local
    config.generators do |g|
      g.scaffold_controller false
      g.assets false
      g.helper false
    end
  end
end
