class Deck
  
  attr_reader :cards
  def initialize
    @cards = []
    import
  end

  def import
    File.new("flashcard_samples.txt").each_slice(3) do |slice| 
      arr = (slice.map! {|element| element.chomp})
      @cards << Card.new({:definition => arr[0], :answer => arr[1]})
    end
  end

  def select_card
    @cards.sample
  end
end

class Card
  
  attr_reader :definition, :answer
  attr_accessor :correct

  def initialize(args)
    @definition = args.fetch(:definition){raise "need card"}
    @answer = args.fetch(:answer){raise "need answer"}
    @correct = false
  end
  
  def check_guess(answer)
    @correct = @answer == answer 
  end
end
