require "scrivito_icon_box_widget/engine"
require "scrivito_icon_box_widget/configuration"

module ScrivitoIconBoxWidget
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
