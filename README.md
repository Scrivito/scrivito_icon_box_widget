# scrivito_icon_box

[![Gem Version](https://badge.fury.io/rb/scrivito_icon_box_widget.svg)](http://badge.fury.io/rb/scrivito_icon_box_widget)
[![Code Climate](https://codeclimate.com/github/Scrivito/scrivito_icon_box_widget/badges/gpa.svg)](https://codeclimate.com/github/Scrivito/scrivito_icon_box_widget)

## Description

A Widget for Scrivito showing an icon in a box. Color, Backgroundcolor, the icon, size and the shape can be selected. For icons, font awesome is used.

## Installation

Add this lines to your application's `Gemfile`:

    gem 'scrivito_icon_box_widget'
    gem 'font-awesome-rails'

Add this line to your application Stylesheet manifest:

    *= require icon_box_widget/application

Add this line to your editing Stylesheet manifest:

    *= require icon_box_widget/editing

Add this line to your editing Javascript manifest:

    //= require icon_box_widget/editing

And then execute:

    $ bundle
    $ rake cms:migrate:install
    $ rake cms:migrate
    $ rake cms:migrate:publish

## Setting Colors for your layout

If yout want to define your colors for the icons, add the following lines to the file `config/config.yml`:

    scrivito_icon_box_widget:
      colors: "red green blue"

If you have done this, run the geneartor for the initializer.

    rails g scrivito_icon_box_widget

This will copy the initializer script to `config/initializer`

## Changelog

See [Changelog](https://github.com/scrivito/scrivito_icon_box_widget/blob/master/CHANGELOG.md) for more details.

## Contributing

1. Fork it ( https://github.com/scrivito/scrivito_icon_box_widget/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request