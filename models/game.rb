
class Game

    def initialize player
      @player = player
      @computer = ''
      @winner = ''
    end

    def computer_pick
      options = ['rock', 'paper', 'scissors']
      @computer = options[rand(0..2)]
    end

    def compare
      if @player == 'rock' && @computer == 'scissors'
        @winner = "You won!"
      elsif @player == 'scissors' && @computer == 'paper'
        @winner = "You won!"
      elsif @player == 'paper' && @computer == 'rock'
        @winner = "You won!"
      elsif @player == @computer
        @winner = "It's a tie!"
      else
        @winner = "You lost!"
      end
    end

    def declare_winner
      result = "You picked #{@player} and the computer picked #{@computer}! #{@winner}"
      return result
    end
end
