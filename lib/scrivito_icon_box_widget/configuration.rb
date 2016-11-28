module ScrivitoIconBoxWidget
  class Configuration
    attr_accessor :set
    attr_accessor :selection
    attr_accessor :default
    attr_accessor :all_icons_link

    def initialize
      @set = 'glyphicon glyphicon'
      @selection = ['none', 'plus', 'minus', 'cloud', 'envelope', 'pencil', 'search', 'star', 'user', 'cog', 'home', 'tag', 'book', 'bookmark', 'map-marker', 'leaf', 'fire', 'eye-open', 'plane', 'thumbs-up', 'globe', 'briefcase', 'send', 'tower', 'apple', 'ice-lolly', 'grain', 'scale']
      @default = 'ice-lolly'
      @all_icons_link = 'https://getbootstrap.com/components/#glyphicons'
    end
  end
end
