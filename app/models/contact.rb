class Contact < ActiveRecord::Base
    has_one :home

    validates :first_name , :presence => true, :length => {:maximum => 30}
    validates :last_name , :presence => true, :length => {:maximum => 30}
    validates :email, :presence => true, :length => {:maximum => 100}, :format => {:with => /@/}
    
    scope :sorted, lambda { order("contacts.created_at ASC")}
    
end
