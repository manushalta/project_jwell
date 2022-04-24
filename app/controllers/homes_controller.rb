class HomesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.last
    authorize! :read, @user
  end
  def show
  end
  def new
    @user = User.new
  end
  def about
  end
  def cart
  end
end
