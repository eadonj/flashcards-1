

class Deck
  
  attr_reader :cards
  def initialize
    @cards = # array: text import method 
    
  end

  def import
    
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


array = [["Designates code that must be run unconditionally at the beginning of the program before any other.", "BEGIN"],
        ["Gives an unconditional termination to a code block, and is usually placed with an argument.", "break"]]