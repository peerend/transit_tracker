class TablesController < ApplicationController

  def index
    @table = Table.new
    @tables = Table.all
  end

  def create
    @table = Table.new(user_params)
    if @table.save
      flash[:notice] = "Your table was added."
      redirect_to tables_path
    else
      render('index')
    end
  end

  def show
    @table = Table.find(params[:id])
  end

  def edit
    @table = Table.find(params[:id])
    render 'show'
  end

  def update
    @table = Table.find(params[:id])
    if @table.update(user_params)
      flash[:notice]="Your stop has been updated"
      redirect_to edit_table_path
    else
      render 'show'
    end
  end

  def destroy
    @table = Table.find(params[:id])
    if @table.delete
      flash[:notice] = "Your table has been deleted."
      redirect_to tables_path
    else
      render('show')
    end
  end

  private
  def user_params
    params.require(:table).permit(stop_ids: [], :time)
  end

end
