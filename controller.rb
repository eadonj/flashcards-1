require 'flashcards.rb'

deck = Deck.new
puts "Let's have some fun with flashcards!"

deck.cards.each do |card|
  View.show(card)
  guess = gets.chomp
  check = deck.check_guess(card, guess)
  View.response(check)
end


class View

  def show(card)
    puts "Definition: "
    puts card.definition
  end

  def response(bool)
    if bool
      puts "Correct!"
    else
      puts "Incorrect! Try again."
    end
  end

end
