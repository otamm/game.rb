def game
guess=0
number=rand(10)
while true
  puts 'Input a number between 0 and 10.'
	guess=gets.chomp.to_i
	if guess > number
		puts 'too high.'
	elsif guess < number
		puts 'too low.'
	else
		puts 'you won!'
		break
  end
  end
end