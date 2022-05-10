class SkillsController < ApplicationController
  def new
    
  end

  def view
    @data = params[:data]

    @skills = @data.split(",")

  end
end
