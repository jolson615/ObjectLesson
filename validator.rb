puts "This is a test to make sure that the Validator is connected."

class Validator
  def initialize(input)
    if input.downcase == "rock" || input.downcase == "paper" || input.downcase == "scissors"
      @inputvalid = true
    else
      puts "\nSorry, please type only rock, paper, or scissors."
      puts "We here at objectcorp recognize the desire to be creative, but we do not reward it.\n"
      @inputvalid = false
    end
  end

  def inputvalid?
    @inputvalid
  end
end
