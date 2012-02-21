class HomeController < ApplicationController
  def index
  	@title = "Home"
  end
  def help
    @title = "Help"
  end
  def contact
    @title = "Contact"
  end
  def about
    @title = "About"
  end
end
