class ScrivitoIconBoxGenerator < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__)))

  def copy_initializer
    copy_file 'scrivito_icon_box.rb', 'config/initializers/scrivito_icon_box.rb'
  end
end
