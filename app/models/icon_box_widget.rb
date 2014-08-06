class IconBoxWidget < Widget

  def self.colors
    (ENV['ICON_BOX_COLORS'] || "transparent,#000000,#585858,#d9d9d9,#FFFFFF,#003380,#6699CC,#CC0000").split(',')
  end

  def self.sizes
    ["small","medium","large"]
  end

  def self.icons
    ["plus","minus","warning","paw","send","car","sliders","tree","bell","certificate","cloud","comment","dashboard","female","male","flag","globe","heart","leaf","plane","refresh","rocket","question","star","unlock"]
  end
end