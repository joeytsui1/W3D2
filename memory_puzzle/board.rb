class Board

    attr_reader :board
    def initialize (size)
        @board = Array.new(size) {Array.new(size, "_")}
        @card = Card.new()
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def render
        @grid.each do |row|
            puts row.join(" ")
        end
    end

    def won?
    end

    def reveal(pos)
        if card.hide
            return card.face_value
        end
    end
end