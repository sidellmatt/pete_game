require_relative "obstacle.rb"
require_relative "fire_obstacle.rb"

class Board

  def initialize(size, difficulty)
    @grid = Array.new(size) { Array.new(size) }
    obstacles = [[(0...size).to_a.sample, (0...size).to_a.sample]]

    
    until (obstacles.length.to_f / (size * size)) * 100 >= difficulty
      idx1 = (0...size).to_a.sample
      idx2 = (0...size).to_a.sample
      obstacles << [idx1, idx2] if !obstacles.include?([idx1, idx2])
    end
    obstacles.each do |idxs|
      @grid[idxs[0]][idxs[1]] = [FireObstacle].sample.new()
    end
  end

end