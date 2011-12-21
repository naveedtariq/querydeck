class ContactsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource :project
  load_and_authorize_resource through: :project
  
  respond_to :xml, :json
  
  def index
    respond_with(@project, @contacts)
  end
  
  def new
    respond_with(@project, @contact)
  end
  
  def create
    @contact.save
    respond_with(@project, @contact)
  end
  
  def show
    respond_with(@project, @contact)
  end
  
  def edit
    respond_with(@project, @contact)
  end
  
  def update
    @contact.update_attributes(params[:contact])
    respond_with(@project, @contact)
  end
  
  def destroy
    @contact.destroy
    respond_with(@project, @contact)
  end
end
