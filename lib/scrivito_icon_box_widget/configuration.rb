module ScrivitoIconBoxWidget
  class Configuration
    attr_accessor :set
    attr_accessor :selection
    attr_accessor :default

    def initialize
      @set = 'glyphicon glyphicon'
      @selection = ['none', 'plus', 'minus', 'cloud', 'envelope', 'pencil', 'search', 'star', 'user', 'cog', 'home', 'tag', 'book', 'bookmark', 'map-marker', 'leaf', 'fire', 'eye-open', 'plane', 'thumbs-up', 'globe', 'briefcase', 'send', 'tower', 'apple', 'ice-lolly', 'grain', 'scale']
      @default = 'ice-lolly'
    end
  end
end
