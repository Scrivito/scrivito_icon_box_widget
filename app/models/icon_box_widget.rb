class IconBoxWidget < Widget

  def self.colors
    if Rails.configuration.respond_to?(:icon_box_colors)
      Rails.configuration.icon_box_colors.split(" ")
    else
      IconBoxWidget.fallback_colors.split(" ")
    end
  end

  def self.sizes
    ["small","medium","large"]
  end

  def self.styles
    ["circle","square","filled-circle","filled-square"]
  end

  def self.icons
    ["plus","minus","warning","paw","send","car","sliders","tree","bell","certificate","cloud","comment","dashboard","female","male","flag","globe","heart","leaf","plane","refresh","rocket","question","star","unlock"]
  end

  def background_style
    if self.style && self.style.start_with?('filled')
      "background-color: #{self.background_color}"
    elsif self.style
      "border: 3px solid #{self.background_color}"
    end
  end

  private 
  def self.fallback_colors
    "transparent #000000 #585858 #d9d9d9 #FFFFFF #003380 #6699CC #CC0000"
  end
end