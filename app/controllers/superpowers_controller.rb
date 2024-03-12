class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def new
    @superpower = Superpower.new
  end

  def show
    @superpower = Superpower.new
  end

  def create
    @superpower = Superpower.new(superpower_params)
    if @superpower.save!
      redirect_to superpower_path(@superpower)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def superpower_params
    params.require(:superpower).permit(:name, :category)
  end
end
