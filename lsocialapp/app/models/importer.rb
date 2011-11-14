# pulls in the fastercsv library for csv processions
require 'csv'

class Importer < ActiveRecord::Base
  
  # verifies that Importer has a file, from the paperclip library
  has_attached_file :data
  
  # parses the csv after the record is created
  after_create :parse_csv
  
  # parses the uploaded CSV file
  def parse_csv
    # loads the file, saves first so paperclip can reference it
    self.save
    raw = CSV.read(data.path, col_sep:"\t", headers:true )
    
    # iterates through each row, creating the relevant records as it goes
    raw.each do |row|
      # creates or loads the revelant record
      c = Customer.find_or_create_by_name(name:row['purchaser name'])
      m = Merchant.find_or_create_by_name(name:row['merchant name'], address:row['merchant address'])
      
      # based on the parameters of the assignment, just creating new
      # purchases as it seems unlikely, in this specific case, we need 
      # to handle duplicates
      p = Purchase.create(name:row['item description'],customer:c,merchant:m,count:row['purchase count'],price:row['item price'])
    end
  end
  
  
end
