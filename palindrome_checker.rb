continue_program = true


def palindrome
  puts "please enter something to see if it is a palindrome"
  pal = gets.chomp()
  pal.gsub!(" ","")
  pal.downcase!

  if pal == "quit" || pal == "stop"
    puts "Goodbye!"
    return false
  end

  letters = pal.split("")
  (letters.length / 2).times do |i|
    letters[i], letters[letters.length - (i + 1)] = letters[letters.length - (i + 1)], letters[i]
  end

  if letters.join("") == pal
    puts "This is a palindrome!"
  else
    puts "This is not a palindrome"
  end

  return true
end


while continue_program == true
  continue_program = palindrome
end
