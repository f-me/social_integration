require "social_integration/version"
require "social_integration/config"
require "social_integration/helper"

I18n.load_path += Dir.glob( File.dirname(__FILE__) + "lib/locales/*.{rb,yml}" ) 

module SocialIntegration
  module Rails
    if ::Rails.version < "3.1"
      require "social_integration/railtie"
    else
      require "social_integration/engine"
    end
  end
end

ActionView::Base.send :include, SocialIntegration::Helper