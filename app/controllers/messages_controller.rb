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
    @message.save
    respond_with(@project, @message)
  end
  
  def show
    respond_with(@project, @message)
  end
  
  def edit
    respond_with(@project, @message)
  end
  
  def update
    @message.update_attributes(params[:message])
    respond_with(@project, @message)
  end
  
  def destroy
    @message.destroy
    respond_with(@project, @message)
  end
end
