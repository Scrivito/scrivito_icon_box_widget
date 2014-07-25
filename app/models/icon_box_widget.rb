class IconBoxWidget < Widget

  def self.colors
    (ENV['ICON_BOX_COLORS'] || "black,#585858,#d9d9d9,white,#003380,#6699cc,#cc0000").split(',')
  end

  def self.sizes
    ["small","medium","large"]
  end

end