class ScrivitoIconBoxWidgetGenerator < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__)))

  def copy_initializer
    copy_file 'scrivito_icon_box_widget.rb', 'config/initializers/scrivito_icon_box_widget.rb'
  end
end
