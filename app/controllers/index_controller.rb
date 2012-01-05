class IndexController < ApplicationController
  before_filter :authenticate_user!, except: [:channel]
  
  def index
  end
  
  def channel
    expires_in 1.day, public: true
    render text: '<script src="//connect.facebook.net/en_US/all.js"></script>'
  end
end
