class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.sorted 
  end
  
  def new 
    @contact = Contact.new()
  end
  
  def create
    #Instantiate a new object using form parameters
    @contact = Contact.new(contact_params)
    # Save the object 
    if @contact.save
    # If save succeeds, redirect to the index action 
    flash[:notice] = "Thanks for your message."
    redirect_to(:controller => 'home', :action => 'index')
    else
    # If save fails, redisplay the form so user can fix problems
    flash[:error] = "Something's not right."
    render('new')
    end
  end
 
  
  def delete
    @contact = Contact.find(params[:id])
  end
  
  def destroy  
    contact = Contact.find(params[:id]).destroy
    flash[:notice] = " Contact destroyed successfully"
    redirect_to(:action => 'index')
  end

  #private means this can't be called as an action
  private 
    def contact_params
      # same as using "params[:subject]", except that it: 
      # - raises an error if :suject is not present 
      # - allows listed attributes to be mass-assigned
      params.require(:contact).permit(:phone, :company, :message, :first_name, :last_name, :email)
    end 

end
  

