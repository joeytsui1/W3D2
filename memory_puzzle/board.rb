class Board

    def initialize (size)
        @grid = Array.new(size) {Array.new(size, "_")}
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
        if cards.all? {|card| car.reveal} 
    end
end