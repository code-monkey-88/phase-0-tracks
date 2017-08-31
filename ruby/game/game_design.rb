#Word Guessing Game
#Enter a word and let your partner guess the letters

class GuessingGame
  # add attribute that allows program to read initial_word
  # add attribute that allows program to read guess_count
  attr_reader :guess_count, :guess_array, :total_guesses_allowed, :initial_word, :letter_array

  # Method to initialize class
  # input: initial word
  # steps:
    # set @word attribute to argument
    # set @total_guesses attribute to word.length
    # create @letter array from splitting word and storing in array.
    # set @guess_count = 0

  def initialize(first_word, hint)
    @initial_word = first_word
    @initial_word_array = first_word.split('')
    @total_guesses_allowed = first_word.length
    @guess_count = 0
    @guess_array = []
    puts "lets start the word guessing game, your first hint can be found below:"
    puts "#{hint}"
  end

  # Method to check letter and provide feedbak to the user
  # input: letter from user
  # steps:
      #increment guess_counter attribute
      #letter will be iterated and when a match is found printed in an array
      #letter will be printed in a new array where a match is found

  def check_letter(letter)
      #conditional logic to handle repetitions without incrementing counter
      @guess_count += 1
      @initial_word_array.each do |l|

        if letter == l
          @guess_array << letter
          puts "you have guessed a correct letter. see below"
          puts "#{@guess_array}"
        end
      end

      return @guess_array
    end

  # Method to congratule/taunt user based on either winning/losing
  # input: user array
  # steps:
      #if user array == initial word array print congrats boo boo
      #if user array !=initial word array print you suck

  def win_or_lose
    if @guess_array == @initial_word_array
      puts "congratulations for winning this round"
    else
      puts "you are the weakest link, goodbye!"
    end
  end

  #debugging method to print instance variables

  def about
    puts "the initial word entered was --> #{@initial_word}"
    puts "the total guesses allowed was #{@total_guesses_allowed}"
    puts "the guess count is currently #{@guess_count}"
    puts "here are the letters you have guessed correctly #{@guess_array}"
  end

end

# game_one = GuessingGame.new('sex', 'you do this with your partner with or without protection')
# p game_one.check_letter('s')
# # p game_one.about
# # p game_one.check_letter('y')
# # p game_one.about
# p game_one.win_or_lose

# driver-code with loop on check_letter
# user interface

puts "Welcome to the Word Guessing Game. Please enter the word you would like your partner to guess"
first_word = gets.chomp

puts "Please enter a hint to describe your word"
hint = gets.chomp

game = GuessingGame.new("#{first_word}", "#{hint}")


loop do

  puts "Please guess a letter from the secret word"
  letter = gets.chomp
  puts "Checking letter ... "
  game.check_letter("#{letter}")
  puts "here are the letters you have guessed correctly #{game.guess_array}"
  break if game.guess_count == game.total_guesses_allowed

end

game.win_or_lose
game.about
