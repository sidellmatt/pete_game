require_relative "player.rb"

class Game

    attr_reader :players

    def initialize(*players)
        @players = []
        *players.each do |player|
            @players << Player.new(player)
        end
    end


    def play_turn(player)
        
    end


    def play
        @players.each do |player|
            play_turn(player)
        end
    end

end