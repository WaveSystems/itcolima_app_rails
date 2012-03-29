class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :registrations
    end
  end

  def contact
  end
  
  def about
  end
end
