class Card

    attr_reader :face_value

    def initialize (face_value)
        @face_value = face_value
        @revealed = false
    end

    def hide
        @revealed = false
    end

    def reveal
        @revealed = true
    end

    def revealed?
        @revealed
    end

    def to_s
        @revealed ? @face_value : " "
    end

    def ==(other_card)
        self.revealed == other_card.revealed
    end
end