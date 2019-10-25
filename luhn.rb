# Start from the end of the number sequence and double every second digit
# 2 cases odd and even number digits
# replace the element at a particular ordinal with the double elements value if the value of the doubled element is 10 or greater subtract 9
# find the sum of all the digits
# if the sum modulo 10 is 0 its otherwise its false


module Luhn
  def self.is_valid?(number)
    if number % 2 == 0
      # even number length cases
      i=0
      revnumber = number
      while i <= number
        if revnumber[i] *2 >=10
          revnumber[i] = revnumber[i] *2 -9

         else
          revnumber i = revnumber do i *2 
        end  
        if i == number
          sumdigits = revnumber.inject(0){|sum,x|sum+x}

          if sumdigits % 10 == 0
            puts true
           else
            puts false
          end 
        end 
      end
    end
  end    
end    
        
      
 

puts(Luhn.is_valid?(4194560385008504)).to be true
puts(Luhn.is_valid?(4194560385008505)).to be false
puts(Luhn.is_valid?(377681478627336)).to be true  
puts(Luhn.is_valid?(377681478627337)).to be false