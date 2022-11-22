class Card
    attr_reader :face_value

    def initialize (face_value)
        @face_value = face_value
        @face_up = true
    end

    def hide
        @face_up = false
    end

    def reveal
        @face_up = true
    end

    def to_s
        @face_value ? @face_value : " "
    end

    def ==(other_card)
        self.face_up == other_card.face_up
    end

    def inspect
        "hello world"
    end
end