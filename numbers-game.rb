@upperlimit = 100
@random_number = rand(1..@upperlimit)
@count = 0
@guess = true

def ask(message)
  puts message
  gets.chomp.to_i
end

def welcome
  puts "\nAre you ready to play the numer game?? Y/N"
  answer = gets.chomp.upcase
  loop do
    if answer == "Y"
      puts "Great! Let's go!"
      break
    elsif answer == "N"
      puts "Pity. Bye!"
      break
    else
      puts "That's not a real answer.. Try again Y or N: "
      answer = gets.chomp.upcase
    end
  end
  return answer
end

def guess_num
  if @guess < @random_number
    @guess = ask("\nThis number is too low. You have #{10 - @count} more guesses. Guess again!")
  elsif @guess > @random_number
    @guess = ask("\nThis number is too high. You have #{10 - @count} more guesses. Guess again!")
  elsif @guess == @random_number
    puts "\nCongrats! You've guessed the number in #{@count} rounds! "
  end
end

play = welcome

if play == "Y"
  @guess = ask("\nGuess a number between 1 and #{@upperlimit}: ")

  while @count < 11
    @count += 1
    if @count == 10 && @guess != @random_number
      puts "Too many times! You've lost! The number was #{@random_number}..."
    end
    if @guess == @random_number
      puts "You won! Congrats!"
    end
    break if @count == 10
    break if @guess == @random_number
    guess_num
  end
end
