require_dependency "model_gen/application_controller"

module ModelGen
  class EntitiesController < ApplicationController
    def new
    end

    def create
      @errors = []
      if available_models.include?(params[:name].capitalize)
        @errors << "Model with name #{params[:name]} already exists."
        render 'new'
      else
        command = "rails g model #{params[:name].downcase}"
        params[:fields].each do |index, field|
          command = command + " #{field[:name].downcase}:#{field[:type].downcase}"
        end
        system command
        system 'rake db:migrate'
        redirect_to new_entity_path
      end
    end
  end
end
