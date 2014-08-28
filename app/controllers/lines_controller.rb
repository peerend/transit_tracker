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

  def show
    @line = Line.find(params[:id])
  end

  def edit
    @line = Line.find(params[:id])
    render 'show'
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(user_params)
      flash[:notice]= "Your line has been updated."
      redirect_to lines_path
    else
      render('show')
    end
  end

  def destroy
    @line = Line.find(params[:id])
    if @line.delete
      flash[:notice] = "Your line has been deleted."
      redirect_to lines_path
    else
      render('show')
    end
  end

  private
  def user_params
    params.require(:line).permit(:name)
  end
end
