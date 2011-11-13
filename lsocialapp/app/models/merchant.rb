class Merchant < ActiveRecord::Base
  
    # links the Merchant class to both purchases and customers
    has_many :customers
    has_many :purchases

    # validates the presence of a merchant name and address on creation
    validates_presence_of :name
    validates_presence_of :address
    
end
