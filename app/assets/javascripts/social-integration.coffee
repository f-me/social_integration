window.SocialIntegration =
  openUrl : (url) ->
    window.open(url)
    false

  share : (el) ->
    site = $(el).data('site')
    title = encodeURIComponent($(el).parent().data('title') || '')
    img = encodeURIComponent($(el).parent().data("img") || '')
    url = encodeURIComponent($(el).parent().data("url") || '')
    if url.length == 0
      url = encodeURIComponent(location.href)
    switch site
      when "twitter"
        SocialIntegration.openUrl("https://twitter.com/home?status=#{title}: #{url}")
      when "facebook"
        SocialIntegration.openUrl("http://www.facebook.com/sharer.php?t=#{title}&u=#{url}")
      when "vkontakte"
        SocialIntegration.openUrl("http://vkontakte.ru/share.php?url=#{url}")

    false
