class CompaniesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  def index
    @companies=Company.all
  end
  
  def new
  end
  
  
  def create
    @company.user = current_user
    if @company.save
      flash[:success] = "Company created sucessfully!"
      redirect_to @company
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @company.destroy
    redirect_to root_url
  end
  
  def edit
  end
  
  def show
  end
  
  def update
    if @company.update_attributes(params[:company])
      flash[:notice] = "Successfully updated company."
      redirect_to @company
    else
      render :action => 'edit'
    end
  end
end
