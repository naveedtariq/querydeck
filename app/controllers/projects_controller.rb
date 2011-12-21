class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  
  respond_to :xml, :json
  
  def index
    respond_with(@projects)
  end
  
  def new
    respond_with(@project)
  end
  
  def create
    @project.save
    respond_with(@project)
  end
  
  def show
    respond_with(@project)
  end
  
  def edit
    respond_with(@project)
  end
  
  def update
    @project.update_attributes(params[:project])
    respond_with(@project)
  end
  
  def destroy
    @project.destroy
    respond_with(@project)
  end
end
