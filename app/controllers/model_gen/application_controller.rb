module ModelGen
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :available_models

    def available_models
      rb_files = File.join("**", "*.rb")
      Dir.glob("#{Rails.root}/app/models" + rb_files).collect do |filename|
        filename.chomp('.rb').split("/").last.camelize
      end.flatten.reject { |m| m.starts_with?('Concerns::') || m == 'ApplicationRecord' }
    end
  end
end
