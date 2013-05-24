

class Deck
  
  attr_reader :cards
  def initialize
    @cards = import
    
  end

  def import
    @lines = []
    File.new("flashcard_samples.txt").each_slice(3) do |slice| 
      @lines << slice.map! {|element| element.chomp}
    end
    puts @lines.inspect
end
flashcards = []
import
@lines.each {|arr| flashcards << Card.new({:defintion => arr[0], :answer => arr[1]})}
  end

  def check_guess(guess)
    
  end

end

class Card
  
  attr_reader :defintion, :answer
  def initialize(args)
    @definition = args.fetch(:defintion){raise "need card"}
    @answer = args.fetch(:answer){raise "need answer"}
  end

end

a = Deck.new
a.import