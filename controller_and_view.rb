require 'flashcards.rb'

# Controller
deck = Deck.new

definition = show_definition
respond_to_guess(definition)


def show_definition
  View.greeting
  definition = deck.select_card
  View.show(definition)
  definition
end

def respond_to_guess(definition)
  guess = gets.chomp
  check = deck.check_guess(definition, guess)
  View.response(check)
end

class View

  def show(definition)
    puts "Definition: "
    puts definition
  end

  def greeting
    puts "Let's have some fun with flashcards!"
  end

  def response(bool)
    if bool
      puts "Correct!"
    else
      puts "Incorrect! Try again."
    end
  end

end
