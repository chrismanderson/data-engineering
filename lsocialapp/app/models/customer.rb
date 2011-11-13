class Customer < ActiveRecord::Base
  
  # customers can have many purchases. 
  has_many :purchases
  
  # validates that each customer has a name
  validates_presence_of :name
  
end
