class ModelGen::CreateModelGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  argument :attributes, type: :array, default: [], banner: "field[:type][:index] field[:type][:index]"

  def create
    command = "rails g model #{name.downcase}"
    attributes.each do |field|
      command = command + " #{field.name.downcase}:#{field.type.downcase}"
    end
    system command
    system 'rake db:migrate'
  end
end
