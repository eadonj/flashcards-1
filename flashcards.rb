class Deck
  
  attr_reader :cards
  def initialize
    @cards = []
    import
  end

  def import
    File.new("flashcard_samples.txt").each_slice(3) do |slice| 
      arr = (slice.map! {|element| element.chomp})
      @cards << Card.new({:defintion => arr[0], :answer => arr[1]})
  end

  def select_definition
    @cards.sample
  end

  def check_guess(definition, answer)
    @cards.find {|card| card.answer == answer && card.definition == definition }
  end
end

class Card
  
  attr_reader :defintion, :answer
  def initialize(args)
    @definition = args.fetch(:defintion){raise "need card"}
    @answer = args.fetch(:answer){raise "need answer"}
  end

end
