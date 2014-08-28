class StationsController < ApplicationController

  def index
    @station = Station.new
    @stations = Station.all
  end

  def create
    @station = Station.new(user_params)
    if @station.save
      flash[:notice] = "Your station was added"
      redirect_to stations_path
    else
      render ('index')
    end
  end

  def show
    @station = Station.find(params[:id])
  end

  def edit
    @station = Station.find(params[:id])
    render 'show'
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(user_params)
      flash[:notice]= "Your station has been updated."
      redirect_to stations_path
    else
      render('show')
    end
  end

  def destroy
    @station = Station.find(params[:id])
    if @station.delete
      flash[:notice] = "Your station has been deleted."
      redirect_to stations_path
    else
      render('show')
    end
  end

  private
  def user_params
    params.require(:station).permit(:name)
  end
end
