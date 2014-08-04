class CreateIconBoxWidget < ::Scrivito::Migration
  def up
    Scrivito::ObjClass.create(
      name: 'IconBoxWidget',
      type: 'publication',
      title: 'Icon Box Widget',
      attributes: [
        {:name=>"icon", :type=>"string"},
        {:name=>"color", :type=>"string"},
        {:name=>"background_color", :type=>"string"},
        {:name=>"size", :type=>"enum", :values=>["small","medium","large"]},
      ]
    )
  end
end
