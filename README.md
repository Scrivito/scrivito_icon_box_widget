scrivito_icon_box
=================

[![Gem Version](https://badge.fury.io/rb/scrivito_icon_box.svg)](http://badge.fury.io/rb/scrivito_icon_box)
[![Code Climate](https://codeclimate.com/github/gertimon/scrivito_icon_box.png)](https://codeclimate.com/github/gertimon/scrivito_icon_box)


A Widget for Scrivito showing an icon in a box

Add this lines to your application's `Gemfile`:

    gem 'scrivito_icon_box'
    gem 'font-awesome-rails'

Add this line to your application Stylesheet manifest:

    *= require scrivito_icon_box/application

Add this line to your editing Stylesheet manifest:

    *= require scrivito_icon_box/editing

Add this line to your editing Javascript manifest:

    //= require scrivito_icon_box/editing

And then execute:

    $ bundle
    $ rake cms:migrate:install
    $ rake cms:migrate
    $ rake cms:migrate:publish

## Set Colors

If yout want to define your colors for the icons, add the following lines to the file `config/config.yml`:

    scrivito_icon_box:
      colors: "red green blue"

If you have done this, run the geneartor for the initializer.

    rails g scrivito_icon_box

This will copy the initializer script to `config/initializer`

## Changelog
See [Changelog](https://github.com/gertimon/scrivito_icon_box/blob/master/CHANGELOG.md) for more

## Contributing

1. Fork it ( https://github.com/infopark/scrivito_icon_box/merge_tags/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request