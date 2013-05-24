require './flashcards.rb'

# Controller
class Game
  
  include View

  attr_reader :deck
  attr_accessor :definition

  def initialize
    greeting
    @deck = Deck.new
  end

  def play
    while true
      show_definition
      verify_guess
    end
  end
  
  def show_definition
    @definition = @deck.select_card
    show(@definition)
  end

  def respond_to_guess
    guess = gets.chomp
    guess == "exit" ? goodbye : response(verify_guess)
  end

  def verify_guess
    @deck.check_guess(@definition, guess)
  end

end

#View
module View
  
  def show(definition)
    puts "Definition: "
    # puts definition
  end

  def goodbye
    puts "Too lazy to keep going? OK fine."
    return  
  end

  def greeting
    puts "Let's have some fun with flashcards! Enter the correct term for each definition."
    print "Guess: "
  end

  def response(bool)
    if bool
      puts "Correct!"
    else
      puts "Incorrect! Try again."
    end
  end
end

# DRIVER CODE
game = Game.new
game.play
