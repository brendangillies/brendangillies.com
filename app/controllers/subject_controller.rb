class SubjectController < ApplicationController
  
  def index
    @subject = Subjects.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new 
    
  end

end
