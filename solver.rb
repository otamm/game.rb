MAX_VALUE = 300000000
MAX_TRIES = Math.log2(MAX_VALUE).ceil

number = rand(MAX_VALUE) + 1
checks_called = 0

define_method :check do |guess|
  checks_called += 1

  if checks_called > MAX_TRIES + 1
    raise "check called too many times"
  end

  if guess > number
    1
  elsif guess < number
    -1
  else
    0
  end
end

def guess_number(min, max)
  # You can call the `check` method with a number to see if it
  # is the hidden value.
  #
  # If the guess is correct, it will return 0.
  # If the guess is too high, it will return 1.
  # If the guess is too low, it will return -1.
  #
  # If you call `check` too many times, the program will crash.
  #
  # e.g. if the hidden number is 43592, then
  #
  # check(50000) # => 1
  # check(40000) # => -1
  # check(43592) # => 0
  #
  # When you've figured out what the hidden number is, return it
  # from this method.

  #######################
  # YOUR CODE GOES HERE #
  #######################
  num = max/2

  while true
    result=check(num)
    if result == -1
      min=num
      num=((max-min)/2 + min).ceil
      puts num
    elsif result == 1
      max=num
      num=((max+min)/2).ceil
      puts num
    else
      return num
    end
  end
end

guess = guess_number(1, MAX_VALUE)

if guess == number
  puts "Guessed correctly!"
  exit 0
else
  puts "Invalid guess."
  exit 1
end
