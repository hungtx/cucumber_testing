class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
    authorize! :manage, :all
  end

  def show
    @user = User.find(params[:id])
    @companies = @user.companies
  end
end
