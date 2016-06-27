puts "this line is a test to see if 'game.rb' is properly linked."

class Game
  attr_reader :computerthrow, :userthrow
  def initialize(move)
    @userthrow = move
  end

  def ai
    @computerthrow = ["rock", "paper", "scissors"].sample
    puts "The computer chose #{@computerthrow}."
  end

  def result
    if @userthrow.downcase == @computerthrow
      puts "You and the computer both put #{@userthrow}! It's a tie."
    elsif @userthrow.downcase == "rock"
      if @computerthrow == "paper"
        self.lose
      elsif @computerthrow == "scissors"
        self.win
      end
    elsif @userthrow.downcase == "paper"
      if @computerthrow == "scissors"
        self.lose
      elsif @computerthrow == "rock"
        self.win
      end
    elsif @userthrow.downcase == "scissors"
      if @computerthrow == "rock"
        self.lose
      elsif @computerthrow == "paper"
        self.win
      end
    end
  end

  def win
    puts "You chose #{@userthrow} which beats the computer's #{@computerthrow}! \nYou win!"
  end

  def lose
    puts "You chose You chose #{@userthrow} which loses to the computer's #{@computerthrow}. \nYou lose."
  end

  def rungame
    self.ai
    self.result
  end
end
