class StopsController < ApplicationController

  def index
    @stop = Stop.new
    @stops = Stop.all
  end

  def create
    @stop = Stop.new(user_params)
    if @stop.save
      flash[:notice] = "Your stop was added."
      redirect_to stops_path
    else
      render('index')
    end
  end

  def show
    @stop = Stop.find(params[:id])
  end

  def edit
    @stop = Stop.find(params[:id])
    render 'show'
  end

  def update
    @stop = Stop.find(params[:id])
    if @stop.update(user_params)
      flash[:notice]= "Your stop has been updated."
      redirect_to stops_path
    else
      render('show')
    end
  end

  def destroy
    @stop = Stop.find(params[:id])
    if @stop.delete
      flash[:notice] = "Your stop has been deleted."
      redirect_to stops_path
    else
      render('show')
    end
  end

  private
  def user_params
    params.require(:stop).permit(:station_id, :line_id)
  end

end
