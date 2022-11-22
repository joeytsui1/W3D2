class Card
    attr_reader :face_up

    def initialize (face_value)
        @face_value = face_value
        @revealed = true
    end

    def hide
        @revealed = false
    end

    def reveal
        @revealed = true
    end

    def to_s
        @revealed ? @face_value : " "
    end

    def ==(other_card)
        self.face_up == other_card.face_up
    end

    # def inspect
    #     "hello world"
    # end
end