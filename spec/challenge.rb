def maskify(credit_card)
  return credit_card if (credit_card === nil) 
  return credit_card if credit_card.length < 6
  

  #1. loop over all elements
  #check if current char should be masked or not inside loop
  #add new char to masked variable 

  masked = ""
  credit_card_array = credit_card.split("")
  credit_card_array.each_with_index do |char, index |
    #puts "#{index} #{char}"
  # if index[0] is a digit, replace with #
  # \d+ - is a digit?
  # return masked
  
    #masked << char if char == index[0] && char =~ /\d/ 
    unless is_first_char?(index) || is_last_4_chars?(index, credit_card_array.length)
      if is_a_digit?(char)
        masked << "#"
      else  
        masked << char
      end
    else
      masked << char
    end
  end
  return masked
end

def is_a_digit?(char)
  (char =~ /\d+/) == 0
end

def is_first_char?(index)
  index == 0
end

def is_last_4_chars?(index, length)
  index >= length - 4
end



a = "1b9898d-fdfd-fd99998"
#puts is_a_digit?('d')
puts maskify(a)
puts a

