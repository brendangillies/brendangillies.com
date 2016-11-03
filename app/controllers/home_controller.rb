class HomeController < ApplicationController
  
  before_filter :check_for_mobile, :only => :index
  
  def index
  end
  
  def blog 
  end

end



