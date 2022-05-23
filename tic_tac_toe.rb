require 'pry-byebug'

# pseudocode #
# take players_one and players_two names (class?) #
# ask players what symbols they want to use (class?) #
# design game_board (method?) #
# winning combinations (method?) #
# some type of loop (infinte loop inside of own method?) #
# if board is full game is tied #
# if tied ask to play again? #
# if there is a winner, congratulations are in order #
# something for invalid entries #
# some way to exit game if wanted #
# possibly set up a simple AI to play against when only one player is available #

class BoardOutline
  $valid_moves = %w[1 2 3 4 5 6 7 8 9]
  attr_accessor :position_one, :position_two, :position_three, :position_four, 
  :position_five, :position_six, :position_seven, :position_eight, :position_nine

  def initialize(p1, p2, p3, p4, p5, p6, p7, p8, p9)
    @position_one = p1
    @position_two = p2
    @position_three = p3
    @position_four = p4
    @position_five = p5
    @position_six = p6
    @position_seven = p7
    @position_eight = p8
    @position_nine = p9
  end


  def board_outline
    puts "
    #{@position_one} | #{@position_two} | #{@position_three}
    --+---+--
    #{@position_four} | #{@position_five} | #{@position_six}
    --+---+--
    #{@position_seven} | #{@position_eight} | #{@position_nine}
    
    "

  end
end
  
class 
  
  end

  def winning_player
  
  end

# list of possible winning combinations #

  def player_move(row, column)
  
  end

  def game_play()

  end


end
