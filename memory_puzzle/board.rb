require_relative "card.rb"

class Board

    attr_reader :board
    def initialize (size=4)
        @grid = Array.new(size) {Array.new(size)}
        @size = size
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end
    
    def populate
        alpha = ("A".."Z").to_a
        num_pairs = (@size * @size) / 2
        pair_arr = [] # aa bb cc dd ee ff gg hh

        while num_pairs > 0
            pair_arr << alpha.shuffle.take(1) * 2
            num_pairs -= 1
        end

        pair_arr.shuffle

        @grid.each_index do |i|
            @grid[i].each_index do |j|
                @grid[i][j] == pair_arr.pop 
            end
        end
    end
    
    def render
        @grid.each do |row|
            puts row.join(" ")
        end
    end

    def reveal(pos)
        if card.hide
            return card.face_value
        end
    end

    def won?
        @grid.all? {|row| row.all? {|ele| ele.revealed?}}
    end
end
