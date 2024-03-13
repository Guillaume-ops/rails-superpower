class PagesController < ApplicationController
  def home
    @user = current_user
    @superpowers = Superpower.all
  end
end
