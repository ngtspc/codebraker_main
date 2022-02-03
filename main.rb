require_relative 'codebraker'
require_relative 'cli'

class Main
  attr_accessor :current_attempts

  def initialize(current_attempts = 0)
    @codebraker = Codebraker.new
    @current_attempts = current_attempts
  end

  def run
    CLI.greeting
    @current_attempts = CLI.choose_attempts_number
    @current_attempts.times do
      entered_number = Codebraker.enter_number
      hidden_number = @codebraker.check(entered_number)
      break if CLI.won_game?(hidden_number)

      @current_attempts = CLI.decrease_attempts_counter(@current_attempts)
    end
    CLI.game_over?(@current_attempts)
  end
end

main = Main.new
main.run
