class CollaboratorsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource :project
  load_and_authorize_resource through: :project
  
  respond_to :xml, :json
  
  def index
    respond_with(@project, @collaborators)
  end
  
  def new
    respond_with(@project, @collaborator)
  end
  
  def create
    @collaborator.save
    respond_with(@project, @collaborator)
  end
  
  def show
    respond_with(@project, @collaborator)
  end
  
  def edit
    respond_with(@project, @collaborator)
  end
  
  def update
    @collaborator.update_attributes(params[:collaborator])
    respond_with(@project, @collaborator)
  end
  
  def destroy
    @collaborator.destroy
    respond_with(@project, @collaborator)
  end
end
