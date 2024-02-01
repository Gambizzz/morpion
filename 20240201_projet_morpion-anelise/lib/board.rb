require_relative 'player'
require_relative 'game'
require_relative 'boardcase'

class Board
  attr_accessor :board

  def initialize
    @board = []
  
    9.times do |i|
    @board << Board_case.new("case#{i+1}").value
    end
  end

  def play_turn(player)
   puts "Sur quelle case veux-tu aller #{player.name} ? "
   case_number = gets.chomp.to_i
   if @board[(case_number-1)] == " "
    @board[(case_number-1)] = player.value
   else
    puts "Pas dispo"
    play_turn(player)
   end
  end

  def display_board
    puts "  | A | B | C |"
    puts " -------------- "
    puts "1 | #{@board[0]} | #{@board[1]} | #{@board[2]} | "
    puts " -------------- "
    puts "2 | #{@board[3]} | #{@board[4]} | #{@board[5]} |"
    puts " -------------- "
    puts "3 | #{@board[6]} | #{@board[7]} | #{@board[8]} |"
  end
  
  def victory?
   if @board[0] == @board[1] && @board[0] == @board[2] && @board[0] != " " || @board[3] == @board[4] && @board[3] == @board[5] && @board[3] != " " || @board[6] == @board[7] && @board[6] == @board[8] && @board[6] != " "  || @board[0] == @board[3] && @board[0] == @board[6] && @board[0] != " " || @board[1] == @board[4] && @board[1] == @board[7] && @board[1] != " "  || @board[2] == @board[5] && @board[2] == @board[8] && @board[2] != " " || @board[0] == @board[4] && @board[0] == @board[8] && @board[0] != " "  || @board[2] == @board[4] && @board[2] == @board[6] && @board[2] != " " 
     return true
   else
     return false
   end
  end
end
