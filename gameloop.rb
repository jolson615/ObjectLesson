require_relative 'game.rb'
# require_relative 'validator.rb'

command = ""
until command.slice(0, 2).downcase == "no" do #the .slice method lets me start at 0 and take only two characters. That way, if the user types "nope" or "no thanks" or "not really", the computer still understands.
  puts "\nThrow rock, paper, or scissors."
  choice = gets.chomp
  if Validator.new(choice).inputvalid? == true
    thisgame = Game.new(choice)
    thisgame.rungame
  end
  puts "Would you like to play again?"
  command = gets.chomp
end
