module SocialIntegration
  class << self
    attr_accessor :config
    def configure
      yield self.config ||= Config.new
    end
  end
  
  class Config
    # enable social sites to share, 
    # * default : twitter facebook vkontakte
    # * site support: twitter facebook vkontakte
    attr_accessor :allow_sites
    
    def initialize
    end
  end
end