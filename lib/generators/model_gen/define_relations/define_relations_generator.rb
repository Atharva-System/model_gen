class ModelGen::DefineRelationsGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :attributes, type: :array, default: [], banner: "relation[:type] relation[:type]"

  def create
    attributes.each do |relation|
      line = "class #{name.downcase.capitalize} < ApplicationRecord"
      case relation.type
        when :has_many
          gsub_file "app/models/#{name.downcase}.rb", /(#{Regexp.escape(line)})/mi do |match|
            "#{match}\n  #{relation.type} :#{relation.name.downcase.pluralize}\n"
          end
        when :has_one
          gsub_file "app/models/#{name.downcase}.rb", /(#{Regexp.escape(line)})/mi do |match|
            "#{match}\n  #{relation.type} :#{relation.name.downcase}\n"
          end
        when :has_and_belongs_to_many
          puts relation.type
          puts relation.name
      end
    end
  end
end
