class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR category ILIKE :query"
      @superpowers = @superpowers.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def new
    @superpower = Superpower.new
  end

  def show
    @superpower = Superpower.find(params[:id])
    @booking = Booking.new
  end

  def create
    @superpower = Superpower.new(superpower_params)
    @superpower.user = current_user
    if @superpower.save
      redirect_to superpowers_path(@superpower)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def superpower_params
    params.require(:superpower).permit(:name, :category, :price)
  end
end
