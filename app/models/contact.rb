class Contact < ActiveRecord::Base
    has_one :home
  
    scope :sorted, lambda { order("contacts.created_at ASC")}
    
end
