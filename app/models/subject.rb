class Subject < ActiveRecord::Base

  scope :visible, lambda { where(:visibile => true)}
  scope :sorted, lambda { order("subject.position ASC")}

end
