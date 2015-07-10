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
      IconBoxWidget.fallback_colors
    end
  end

  def self.icons
    IconBoxWidget.icon_list.map do |icon|
      {
        content: icon,
        caption: "<i class='fa fa-#{icon}'></i>#{icon.present? ? icon : 'none'}".html_safe,
        style: '',
        css: 'icon-select'
      }
    end
  end

  def background_class
    self.background_color
  end

  private
  def self.fallback_colors
    %w(transparent black gray light-gray red green blue yellow)
  end

  def self.icon_list
    ["none", "plus","minus","warning","paw","send","car","sliders","tree","bell","certificate","cloud","comment","dashboard","female","male","flag","globe","heart","leaf","plane","refresh","rocket","question","star","unlock"]
  end
end