class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def new
    @superpower = Superpower.new
  end

  def show
    @superpower = Superpower.find(params[:id])
  end

  def create
    @superpower = Superpower.new(superpower_params)
    @superpower.user = current_user
    if @superpower.save
      redirect_to superpower_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def superpower_params
    params.require(:superpower).permit(:name, :category, :price)
  end
end
