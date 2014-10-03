[![Build Status](https://travis-ci.org/thegarage/waitlist.svg?branch=master)](https://travis-ci.org/thegarage/waitlist)

Waitlist allows you to accept email addresses from people who wish to be
notified of your product's launch. We wrote it for use in [The Garage's Rails
Template][1].

## Installation ##

Add this to your `Gemfile`:

```ruby
gem 'waitlist'
```

Next, run this generator to install migrations and mount the engine.

```bash
$ rails generate waitlist:install
```

By the default, generator mounts the engine at `/waitlist`, but you can
change it to something else by editing your app's `config/routes.rb`.

## Usage ##

To override the signup view, create `app/views/waitlist/subscribers/new.html.erb` in your app. Here's the bare minimum you need:

```html
<%= form_for([waitlist, Waitlist::Subscriber.new]) do |f| %>
  <%= f.email_field :email %>
  <%= f.submit %>
<% end %>
```

It also works with AJAX:

```javascript
$.post('/waitlist/subscribers', { subscriber: { email: 'test@example.com' } });
```

## [CONTRIBUTING][2] ##

   1. Fork it.
   2. Write tests.
   3. Patch it.
   4. Pull Request.

## License ##

[MIT License][3]

[1]: https://github.com/thegarage/thegarage-template
[2]: CONTRIBUTING.md
[3]: LICENSE.txt

