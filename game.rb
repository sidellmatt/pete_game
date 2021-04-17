require_relative "player.rb"
require_relative "board.rb"

class Game

    attr_reader :players

    def initialize(*players)
        @players = []
        *players.each do |player|
            @players << Player.new(player)
        end
        p "Type a number from 1-100. "
        response = gets.chomp
        @board = Board.new(@players.length * 2, response)
    end


    def play_turn(player)

    end


    def play
        @players.each do |player|
            play_turn(player)
        end
    end

end