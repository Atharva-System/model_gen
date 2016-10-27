require_dependency "model_gen/application_controller"

module ModelGen
  class EntitiesController < ApplicationController
    def new
    end

    def create
      command = "rails g model #{params[:name].downcase}"
      params[:fields].each do |index, field|
        command = command + " #{field[:name].downcase}:#{field[:type].downcase}"
      end
      system command
      redirect_to new_entity_path
    end
  end
end
