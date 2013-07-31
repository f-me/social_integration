# Social Share Button

This is a gem to helper you quick create a share feature in you Rails apps.

# Sites list

* Facebook
* Twitter
* Vkontakte

## Screenshot

<img src="http://l.ruby-china.org/photo/85fa930a43d622ba9653eb0f86df207c.png" width="220px" />

## Install

In your `Gemfile`:

```ruby
gem 'social-integration'
```

And install it:

```bash
$ bundle install
$ rails generate social_integration:install
```

## Configure

You can config `config/initializes/social_integration.rb` to choose which site do you want to use:

```ruby
SocialIntegration.configure do |config|
  config.allow_sites = %w(twitter facebook google_plus weibo douban tqq renren qq kaixin001 baidu tumblr)
end
```

## Usage

You need add require css,js file in your app assets files:

`app/assets/javascripts/application.coffee`

```
#= require social-integration
```

`app/assets/stylesheets/application.scss`

```
*= require social-integration
```

Then you can use `social_integration_tag` helper in views, for example `app/views/posts/show.html.erb`

```erb
<%= social_integration_tag(@post.title) %>
```

And you can custom rel attribute:

```erb
<%= social_integration_tag(@post.title, :rel => "twipsy") %>
```

You can also specify the URL that it links to:

```erb
<%= social_integration_tag(@post.title, :url => "http://myapp.com/foo/bar") %>
```

For the Tumblr there are an extra settings, prefixed with :'data-*'
```erb
<%= social_integration_tag(@post.title, :image => "https://raw.github.com/vkulpa/social-integration/master/lib/assets/images/sprites/social-integration/tumblr.png", :'data-type' => 'photo') %>
<%= social_integration_tag(@post.title, :'data-source' => "https://raw.github.com/vkulpa/social-integration/master/lib/assets/images/sprites/social-integration/tumblr.png", :'data-type' => 'photo') %>
```
Those two above calls are identical.
Here are the mapping of attributes depending on you data-type parameter

<pre>
| data-type         | standard  | custom :"data-*" prefixed  |
--------------------------------------------------------------
| link (default)    | title     | data-title                 |
|                   | url       | data-url                   |
| text              | title     | data-title                 |
| photo             | title     | data-caption               |
|                   | image     | data-source                |
| quote             | title     | data-quote                 |
|                   |           | data-source                |
</pre>


## Demo

[http://ruby-china.org/wiki/about](http://ruby-china.org/wiki/about)
