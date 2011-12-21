class PagesController < ApplicationController
  layout 'pages'
  
  rescue_from ActionView::MissingTemplate do |exception|
    render template: "errors/404", status: 404
  end
  
  def show
    render template: "pages/#{clean_path}"
  end
  
  protected
    def clean_path
      path = Pathname.new "/#{params[:id]}"
      path.cleanpath.to_s[1..-1]
    end
end
