class IconBoxWidget < Widget

  def self.colors
    if Rails.configuration.respond_to?(:icon_box_colors)
      Rails.configuration.icon_box_colors.split(" ")
    else
      IconBoxWidget.fallback_colors.split(" ")
    end
  end

  def self.icons
    ["plus","minus","warning","paw","send","car","sliders","tree","bell","certificate","cloud","comment","dashboard","female","male","flag","globe","heart","leaf","plane","refresh","rocket","question","star","unlock"]
  end

  def background_class
    self.background_color
  end

  private 
  def self.fallback_colors
    "transparent #000000 #585858 #d9d9d9 #FFFFFF #003380 #6699CC #CC0000"
  end
end