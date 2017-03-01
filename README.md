# ScrivitoIconBoxWidget

A Scrivito widget showing an icon in a box. The icon color, background color, the icon, size and the shape can be selected. For the icons, Font Awesome is used.

## Installation

Add this line to your application's Gemfile:

    gem 'scrivito_icon_box_widget'

Add this line to your application stylesheet manifest:

    *= require scrivito_icon_box_widget

## Localization

The following code represents the default localization for English. Copy it to your `en.yml` and change it if necessary:

```yaml
en:
  scrivito_icon_box_widget:
    thumbnail:
      title: Icon Box
      description: A Box to display an icon in specified color and shape
    details:
      icon: Icon
      size: Size
      style: Style
      icon_color: Icon Color
      background_color: Background Color
      label: Label for accessibility
```

## Configuration

Add an initializer to define icon set or icon selection examples. This works with every Icon set that uses an pre-class to define the icons. For example using font awesome:

```ruby
ScrivitoIconBoxWidget.configure do |config|
  config.set = 'fa fa'
  config.selection = ['none', 'plus', 'minus', 'home', 'edit', 'leaf', ...]
  config.default = 'home'
  config.all_icons_link = 'fortawesome.github.io/Font-Awesome/icons/'
end
```

## Customization

We recommend to use [Scrivito Advanced Editors](https://github.com/Scrivito/scrivito_advanced_editors) to utilize the color picker and icon selector included in this gem.

To set your colors for the color picker, add the instance method `selectable_color_classes` to your obj.rb:

```ruby
# in obj.rb
def self.selectable_color_classes(widget_name, attribute)
  if attribute.include? 'background'
    ['bg-white','bg-red','bg-green','bg-blue']
  else
    ['color-white','color-red','color-green','color-blue']
  end
end
```

Then add the color css to your app:

```scss
.bg-white {
  &.scrivito-icon-box {
    border-color: white !important;
  }
  background-color: white !important;
}
.color-white { color: white; }

.bg-red {
  &.scrivito-icon-box {
    border-color: red !important;
  }
  background-color: red !important;
}
.color-red { color: red; }

.bg-green {
  &.scrivito-icon-box {
    border-color: green !important;
  }
  background-color: green !important;
}
.color-green { color: green; }

.bg-blue {
  &.scrivito-icon-box {
    border-color: blue !important;
  }
  background-color: blue !important;
  // set default font color for blue backgrounds to white
  color: white;
  * { color: white }
}
.color-blue { color: blue; }
```
