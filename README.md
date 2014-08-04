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

If yout want to define your colors for the icons, add the evnironment variable `ICON_BOX_COLORS` to your `.env` file:

    ICON_BOX_COLORS = "red,green,blue,orange,yellow"

Change with colors of your wish.

## Changelog
See [Changelog](https://github.com/gertimon/scrivito_icon_box/blob/master/CHANGELOG.md) for more

## Contributing

1. Fork it ( https://github.com/infopark/scrivito_icon_box/merge_tags/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request