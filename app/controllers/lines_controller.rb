class LinesController < ApplicationController

  def index
    @line = Line.new
    @lines = Line.all
  end

  def create
    @line = Line.new(user_params)
    if @line.save
      flash[:notice] = "Your line was added"
      redirect_to lines_path
    else
      render ('index')
    end
  end

  private
  def user_params
    params.require(:line).permit(:name)
  end













end
