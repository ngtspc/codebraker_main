module Interface
  def greeting
    p 'Welcome to our game, kid. I have thought of a number. Can you guess what the number is?'
    p 'How many attempts do you need to win the game?'
  end

  def counter
    p "You have #{@current_attempts -= 1} attempt(s) left!"
  end

  def won_game(hiden_number)
    p 'Congrats! You won the game, kid!' if hiden_number == '++++'
  end

  def game_over(hiden_number)
    p 'Game over' if hiden_number != @number && @current_attempts.zero?
  end

  def choose_attempts_number
    @current_attempts = gets.chomp.to_i
    p "Ok. You have #{@current_attempts} attempts. Show what you can do!"
  end

  def enter_number
    p 'Please enter your number'
    gets.chomp.to_i
  end
end
