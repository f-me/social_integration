# coding: utf-8
module SocialIntegration
  module Helper
    def social_integration_tag(title = "", opts = {})
      extra_data = {}
      rel = opts[:rel]
      html = []
      html << "<div class='social-integration' data-title='#{h title}' data-img='#{opts[:image]}' data-url='#{opts[:url]}'>"
      
      SocialIntegration.config.allow_sites.each do |name|
        extra_data = opts.select { |k, _| k.to_s.start_with?('data') } if name.eql?('tumblr')

        link_title = t "social_integration.share_to", :name => t("social_integration.#{name.downcase}")
        html << link_to("","#", {:rel => ["nofollow", rel],
                                  "data-site" => name,
                                  :class => "social-integration-#{name}",
                                  :onclick => "return SocialIntegration.share(this);",
                                  :title => h(link_title)}.merge(extra_data))
      end
      html << "</div>"
      raw html.join("\n")
    end
  end
end
