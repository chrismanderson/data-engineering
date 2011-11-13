class Purchase < ActiveRecord::Base

    # purchases belong to customers
     belongs_to :customer

     # each purchase has one merchant
     belongs_to :merchant

     # validation tests, though no real error checking as of now
     validates_presence_of :customer
     validates_presence_of :merchant
     validates_presence_of :price
     validates_presence_of :name
     validates_presence_of :count
     validates_presence_of :customer_id
     validates_presence_of :merchant_id
     
  end
