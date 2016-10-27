module ModelGen
  module EntitiesHelper
    def available_data_types
      %w{binary boolean date datetime decimal float integer bigint references string text time timestamp}
    #   primary_key
    end

    def available_models
      rb_files = File.join("**", "*.rb")
      Dir.glob("#{Rails.root}/app/models" + rb_files).collect do |filename|
        filename.chomp('.rb').split("/").last.camelize
      end.flatten.reject { |m| m.starts_with?('Concerns::') || m == 'ApplicationRecord' }
    end
  end
end
