class IconBoxWidget < Widget
  attribute :icon, :string
  attribute :color, :string
  attribute :background_color, :string
  attribute :label, :string
  attribute :size, :enum, values: ["small","medium","large"], default: 'large'
  attribute :style, :enum, values: ["circle","square","filled-circle","filled-square"], default: 'circle'

  default_for :icon do |a,b|
    ScrivitoIconBoxWidget.configuration.default
  end

  def selectable_color_classes(class_name, attribute)
    if Obj.respond_to?('selectable_color_classes')
      Obj.selectable_color_classes(class_name, attribute)
    else
      ['', 'black', 'gray', 'light-gray', 'red', 'green', 'blue', 'yellow']
    end
  end

  def self.icons
    ScrivitoIconBoxWidget.configuration.selection
  end

  def self.caption
    elems = {}
    IconBoxWidget.icons.each do |elem|
      elems[elem] = "<i class='#{IconBoxWidget.icon_set}-#{elem}'></i>#{elem}".html_safe
    end
    return elems
  end

  def background_classes
    c = ["scrivito-icon-box"]
    c << self.size
    c << self.style
    c << self.background_color
    c.join(' ')
  end

  def icon_classes
    c = []
    c << "#{IconBoxWidget.icon_set}-#{self.icon}"
    c << self.color
    c.join(' ')
  end

  private
  def self.icon_set
    ScrivitoIconBoxWidget.configuration.set
  end
end
