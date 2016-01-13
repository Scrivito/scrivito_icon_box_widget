class IconBoxWidget < Widget
  attribute :icon, :string, default: 'leaf'
  attribute :color, :string
  attribute :background_color, :string
  attribute :size, :enum, values: ["small","medium","large"], default: 'large'
  attribute :style, :enum, values: ["circle","square","filled-circle","filled-square"], default: 'circle'

  def selectable_color_classes(class_name, attribute)
    if Obj.respond_to?('selectable_color_classes')
      Obj.selectable_color_classes(class_name, attribute)
    else
      ['', 'black', 'gray', 'light-gray', 'red', 'green', 'blue', 'yellow']
    end
  end

  def self.icons
    ["none", "plus","minus","warning","paw","send","car","sliders","tree","bell","certificate","cloud","comment","dashboard","female","male","flag","globe","heart","leaf","plane","refresh","rocket","question","star","unlock"]
  end

  def self.caption
    elems = {}
    IconBoxWidget.icons.each do |elem|
      elems[elem] = "<i class='fa fa-#{elem}'></i>#{elem}".html_safe
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
    c = ["fa"]
    c << "fa-#{self.icon}"
    c << self.color
    c.join(' ')
  end
end