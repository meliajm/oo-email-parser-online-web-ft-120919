# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

      # emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
class EmailAddressParser
  attr_accessor :array_email_addresses
  
  def initialize(array_email_addresses)
    @array_email_addresses = array_email_addresses
  end
  
  def parse
    # if @array_email_addresses.include?(', ')
    #   a = @array_email_addresses.split(', ')
    # else
    #   a = @array_email_addresses.split(' ')
    # end
    # a
    a = @array_email_addresses.split(' ')
    b = []
    a.each do |email|
      if email[-1] == ","
        b << email.delete_suffix(",") 
      else 
        b << email
      end 
    end
    
    c = []
    b.each do |email|
      if !c.include?(email)
        c << email
      end
    end
    c
  end



end