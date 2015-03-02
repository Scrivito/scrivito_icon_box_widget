# scrivito_icon_box

[![Gem Version](https://badge.fury.io/rb/scrivito_icon_box_widget.svg)](http://badge.fury.io/rb/scrivito_icon_box_widget)
[![Code Climate](https://codeclimate.com/github/Scrivito/scrivito_icon_box_widget/badges/gpa.svg)](https://codeclimate.com/github/Scrivito/scrivito_icon_box_widget)

## Description

A Widget for Scrivito showing an icon in a box. Color, Backgroundcolor, the icon, size and the shape can be selected. For icons, font awesome is used.

## Installation

Add this lines to your application's `Gemfile`:

    gem 'scrivito_icon_box_widget'
    gem 'scrivito_advanced_editors'
    gem 'font-awesome-rails'

Add this line to your application Stylesheet manifest:

    *= require icon_box_widget/application

And then execute:

    $ bundle
    $ rake scrivito:migrate:install

Before running the migration you can change the fields for styles or sizes if needed. So you can add styles for border-style or more selectable styles. Be aware that you have to define the styles in your css.

Than run the migration with:

    $ rake scrivito:migrate
    $ rake scrivito:migrate:publish

## Setting Colors for your layout

You need a method `selectable_color_classes(obj_name, field_name)` in your obj.rb. It returns an Array for your selectable colors.

    def selectable_color_classes(obj_name, field_name)
      return ["red","green","blue"]
    end

Than you need a style for all your defined classes.

    .red {
      background-color: red !important;
    }

    .scrivito-icon-box i.red {
      background-color: transparent !important;
      font-color: red;
    }

If you want to use a not filled styled, you can select the correct style in defaultsview. But you have to add the css styles to your css.

    .red {
      border-color: red;
    }

If you want to change the borderstyle, add the following to your css:

    .scrivito-icon-box.circle,
    .scrivito-icon-box.square {
      border-width: 5px;
      border-style: double;
    }

## Changelog

See [Changelog](https://github.com/scrivito/scrivito_icon_box_widget/blob/master/CHANGELOG.md) for more details.

## Contributing

1. Fork it ( https://github.com/scrivito/scrivito_icon_box_widget/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request