class HomeController < ApplicationController
  def index
    if user_signed_in?
      render layout: 'signed_in'
    else
      render layout: 'application'
    end
  end
end
