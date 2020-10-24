class TeasController < ApplicationController

  def index
    if params[:category]
      @teas = Tea.where(category: params[:category])
    else
      @teas = Tea.all
    end
  end

  def new
    @tea = Tea.new
  end

  def create
    @tea = Tea.new(tea_params(:name, :category, :description))

    if @tea.save
      redirect_to tea_path(@tea)
    else
      render :new
    end
  end

  def show
    @tea = Tea.find_by(id: params[:id])
  end

  private

  def tea_params(*args)
    params.require(:tea).permit(*args)
  end
end
