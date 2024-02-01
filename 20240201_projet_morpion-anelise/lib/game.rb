require_relative 'board'
require_relative 'player'

class Game
  attr_accessor :board, :player1, :player2, :players

  def initialize
    @players = []

    puts "Quel est le nom du premier joueur ?"
    player_name = gets.chomp
    @player1 = Player.new(player_name, "X")
    @players << @player1
    @player1.value = "X"
    @current_player = @player1
    puts player1.name + " va jouer avec " + player1.value
    puts "---------------------------------"

    puts "Quel est le nom du deuxième joueur ?"
    player_name = gets.chomp
    @player2 = Player.new(player_name, "O")
    @players << @player2
    @player2.value = "O"
    puts player2.name + " va jouer avec " + player2.value
    puts "------------------------------------"
        
    @board = Board.new
  end

  def current_player
    if @current_player == @player1
      @current_player = @player2   
    else
      @current_player = @player1
    end
  end

  def turn
      9.times do 
        if @board.victory? == false
        #puts @board.display_board
        @board.play_turn(@current_player)
        current_player
        else
          break
        end
        puts @board.display_board
      end
      if @board.victory? == true
        current_player
        puts "#{@current_player.name} A GAGNÉ !"
      end
  end

      def continue
        puts "Veux-tu rejouer ? Oui ou Non"
        new_game = gets.chomp.to_s
        if new_game == "Oui"
            game = Game.new
        else 
            puts "CIAOOO"
        end
      end
end