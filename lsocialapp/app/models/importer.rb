# pulls in the fastercsv library for csv processions
require 'csv'

class Importer < ActiveRecord::Base
  
  # parses the csv after the record is created
  after_create :parse_csv
  
  # parses the uploaded CSV file
  def parse_csv
    # loads the file
    raw = CSV.read('example_input.tab', col_sep:"\t", headers:true )
    
    # iterates through each row, creating the relevant records as it goes
    raw.each do |row|
      c = Customer.find_or_create_by_name(name:row['purchaser name'])
      m = Merchant.find_or_create_by_name(name:row['merchant name'], address:row['merchant address'])
      p = Purchase.find_or_create_by_name(name:row['item description'],customer:c,merchant:m,count:row['purchase count'],price:row['item price'])
    end
  end
  
  
end
