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
        num_pairs = (@size * @size) / 2
        cards = Card.shuffled_pairs(num_pairs)
       
        @grid.each_with_index do |row, idx|
            row.each_with_index do |spot, jdx|
                pos = [idx, jdx]
                self[pos] = cards.pop
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
