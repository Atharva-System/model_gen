require_dependency "model_gen/application_controller"

module ModelGen
  class RelationsController < ApplicationController

    def new

    end

    def create
      command = "rails g model_gen:define_relations #{params[:name]}"
      params[:relations].each do |index, relation|
        command = command + " #{relation[:model].downcase}:#{relation[:type].downcase}"
      end
      system command
      redirect_to new_relations_path
    end
  end
end
