[![Build Status](https://travis-ci.org/thegarage/prelaunch.svg?branch=master)](https://travis-ci.org/thegarage/prelaunch)

Prelaunch allows you to accept email addresses from people who wish to be
notified of your product's launch. We wrote it for use in [The Garage's Rails
Template][1].

## Installation ##

Add this to your `Gemfile`:

    gem 'prelaunch' git: 'https://github.com/thegarage/prelaunch.git'

Set up the engine in your `config/routes.rb` file:

    mount Prelaunch::Engine, at: "/prelaunch"

Next, install the necessary migrations:

    bin/rake prelaunch:install:migrations

## Usage ##

To override the signup view, create `app/views/prelaunch/subscribers/new.html.erb` in your app. Here's the bare minimum you need:

    <%= form_for(@subscriber) do |f| %>
      <%= f.label :email %>
      <%= f.email_field :email %>
      <%= f.submit %>
    <% end %>

It also works with AJAX:

    $.post('/prelaunch/subscribers', { subscriber: { email: 'test@example.com' } });

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
