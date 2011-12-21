class IndexController < ApplicationController
  def index
    unless user_signed_in?
      render template: 'pages/index', layout: 'pages'
      return
    end
  end
  
  def channel
    expires_in 1.day, public: true
    render text: '<script src="//connect.facebook.net/en_US/all.js"></script>'
  end
end
