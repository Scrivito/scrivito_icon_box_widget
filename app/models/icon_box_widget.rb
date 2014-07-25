class IconBoxWidget < Widget

  def self.colors
    (ENV['ICON_BOX_COLORS'] || "black,#585858,#d9d9d9,white,#003380,#6699cc,#cc0000").split(',')
  end

  def self.sizes
    ["small","medium","large"]
  end

  def self.icons
    ["send","car","sliders","tree","bell","certificate","cloud","comment","dashboard","female","male","flag","globe","heart","leaf","plane","refresh","rocket","question","sign-in","sign-out","star","unlock"]
  end
end