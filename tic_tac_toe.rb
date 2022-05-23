# frozen_string_literal: true

require 'pry-byebug'

# pseudocode #
# take players_one and players_two names (class?) (done) #
# tell them what symbols they will use (class?) (done) #
# design game_board (method?) (Used class and done) #
# winning combinations (method?) (done) #
# some type of loop (infinte loop inside of own method?) (not needed/was thinking I needed it for AI player) #
# if board is full game is tied (done) #
# if tied ask to play again? (nope just exits) #
# if there is a winner, congratulations are in order (done) #
# something for invalid entries  (done) #
# some way to exit game if wanted (done with auto kick) #
# possibly set up a simple AI to play against when only one player is available (will come back when I learn how) #

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

  def draw_outline
    puts "
    #{@position_one} | #{@position_two} | #{@position_three}
    --+---+--
    #{@position_four} | #{@position_five} | #{@position_six}
    --+---+--
    #{@position_seven} | #{@position_eight} | #{@position_nine}

    "
  end
end

class Players
  attr_accessor :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end

def start_game
  $board = BoardOutline.new(1, 2, 3, 4, 5, 6, 7, 8, 9)
  puts 'Player one please enter your name:'
  player_one_name = gets.chomp
  $player_one = Players.new(player_one_name, 'X')
  puts "#{player_one_name}, LUCKY YOU! You will have X's and X's go first!", ' '
  puts 'Player two please enter your name:'
  player_two_name = gets.chomp
  $player_two = Players.new(player_two_name, 'O')
  puts "#{player_two_name}, will have O's!  Sorry about your luck :(", ' '
  $board.draw_outline
end

# Setting how the player will place their marker #
# Will set invalid choices into this next method(s) #

def player_one_moves
  puts "#{$player_one.name}: Please choose an available space to place your X by selecting the corresponding number."
  $move = gets.chomp

  until $valid_moves.include? $move
    puts 'Invalid move you big dummy! Just kidding!  Will you please try agian?'
    $move = gets.chomp
  end

  case $move
  when '1'
    $board.position_one = 'X'
    $valid_moves.delete('1')
  when '2'
    $board.position_two = 'X'
    $valid_moves.delete('2')
  when '3'
    $board.position_three = 'X'
    $valid_moves.delete('3')
  when '4'
    $board.position_four = 'X'
    $valid_moves.delete('4')
  when '5'
    $board.position_five = 'X'
    $valid_moves.delete('5')
  when '6'
    $board.position_six = 'X'
    $valid_moves.delete('6')
  when '7'
    $board.position_seven = 'X'
    $valid_moves.delete('7')
  when '8'
    $board.position_eight = 'X'
    $valid_moves.delete('8')
  when '9'
    $board.position_nine = 'X'
    $valid_moves.delete('9')
  end
end

def player_two_moves
  puts "#{$player_two.name}: Please choose an available space to place your X by selecting the corresponding number."
  $move = gets.chomp

  until $valid_moves.include? $move
    puts 'Invalid move you big dummy! Just kidding!  Will you please try agian?'
    $move = gets.chomp
  end

  case $move
  when '1'
    $board.position_one = 'O'
    $valid_moves.delete('1')
  when '2'
    $board.position_two = 'O'
    $valid_moves.delete('2')
  when '3'
    $board.position_three = 'O'
    $valid_moves.delete('3')
  when '4'
    $board.position_four = 'O'
    $valid_moves.delete('4')
  when '5'
    $board.position_five = 'O'
    $valid_moves.delete('5')
  when '6'
    $board.position_six = 'O'
    $valid_moves.delete('6')
  when '7'
    $board.position_seven = 'O'
    $valid_moves.delete('7')
  when '8'
    $board.position_eight = 'O'
    $valid_moves.delete('8')
  when '9'
    $board.position_nine = 'O'
    $valid_moves.delete('9')
  end
end

def calculate_winner
  if $board.position_one == 'X' && $board.position_two == 'X' && $board.position_three == 'X' ||
     $board.position_four == 'X' && $board.position_five == 'X' && $board.position_six == 'X' ||
     $board.position_seven == 'X' && $board.position_eight == 'X' && $board.position_nine == 'X' ||
     $board.position_one == 'X' && $board.position_four == 'X' && $board.position_seven == 'X' ||
     $board.position_two == 'X' && $board.position_five == 'X' && $board.position_eight == 'X' ||
     $board.position_three == 'X' && $board.position_six == 'X' && $board.position_nine == 'X' ||
     $board.position_one == 'X' && $board.position_five == 'X' && $board.position_nine == 'X' ||
     $board.position_three == 'X' && $board.position_five == 'X' && $board.position_seven == 'X' 
     $winner = $player_one.name
    puts "Game over, #{$winner} wins!"
  end

  if $board.position_one == 'O' && $board.position_two == 'O' && $board.position_three == 'O' ||
     $board.position_four == 'O' && $board.position_five == 'O' && $board.position_six == 'O' ||
     $board.position_seven == 'O' && $board.position_eight == 'O' && $board.position_nine == 'O' ||
     $board.position_one == 'O' && $board.position_four == 'O' && $board.position_seven == 'O' ||
     $board.position_two == 'O' && $board.position_five == 'O' && $board.position_eight == 'O' ||
     $board.position_three == 'O' && $board.position_six == 'O' && $board.position_nine == 'O' ||
     $board.position_one == 'O' && $board.position_five == 'O' && $board.position_nine == 'O' ||
     $board.position_three == 'O' && $board.position_five == 'O' && $board.position_seven == 'O' 
     $winner = $player_two.name
    puts "Game over, #{$winner} wins!"
  end
end

def game_tied
  if $valid_moves.empty? && !$winner
    puts "Game over!  It's a tie!"
    $tie = true
  end
end

def game_play
  $winner = nil
  $tie = false
  while !$winner && !$tie
    player_one_moves
    $board.draw_outline
    calculate_winner
    game_tied
    next unless !$winner && !$tie

    player_two_moves
    $board.draw_outline
    calculate_winner
    game_tied
  end
end

start_game
game_play
