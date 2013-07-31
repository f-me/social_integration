# Social Integration

It's a modification of Jason Lee's "social-share-button" gem.
This is a gem to helper you quick create a share feature in you Rails apps for twitter, facebook and vkontakte.

# Sites list

* Facebook
* Twitter
* Vkontakte

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
  config.allow_sites = %w(twitter facebook vkontakte)
end
```

## Usage

You need add require css,js file in your app assets files:

`app/assets/javascripts/application.coffee`

```
//= require social-integration
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

Here are the mapping of attributes depending on you data-type parameter

&#124;
| data-type         | standard  | custom :"data-*" prefixed  |
--------------------------------------------------------------
| link (default)    | title     | data-title                 |
|                   | url       | data-url                   |
| text              | title     | data-title                 |
| photo             | title     | data-caption               |
|                   | image     | data-source                |
| quote             | title     | data-quote                 |
|                   |           | data-source                |


| First Header  | Second Header | Third Header         |
| :------------ | :-----------: | -------------------: |
| First row     | Data          | Very long data entry |
| Second row    | **Cell**      | *Cell*               |
| Third row     | Cell that spans across two columns  ||
&#124;