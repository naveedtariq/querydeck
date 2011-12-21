class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :ensure_preferred_domain_name!
  layout :default_layout
  
  rescue_from CanCan::AccessDenied do |exception|
    render template: "errors/403", status: 403
  end
  
  protected
    def ensure_preferred_domain_name!
      if Settings.preferred_domain_name.present?
        preferred_domain_name = Settings.preferred_domain_name.downcase
        request_host = request.host.downcase
        
        if request_host != preferred_domain_name && request_host !~ /herokuapp.com$/
          redirect_to host: preferred_domain_name, status: :moved_permanently
        end
      end
    end
    
    def default_layout
      user_signed_in? ? "application" : "pages"
    end
end
