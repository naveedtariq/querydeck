class MessagesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource :project
  load_and_authorize_resource through: :project
  
  respond_to :xml, :json
  
  def index
    respond_with(@project, @messages)
  end
  
  def new
    respond_with(@project, @message)
  end
  
  def create
    @project.save
    respond_with(@project, @message)
  end
  
  def show
    respond_with(@project, @message)
  end
  
  def edit
    respond_with(@project, @message)
  end
  
  def update
    @project.update_attributes(params[:project])
    respond_with(@project, @message)
  end
  
  def destroy
    @project.destroy
    respond_with(@project, @message)
  end
end
