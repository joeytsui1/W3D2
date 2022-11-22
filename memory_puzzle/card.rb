class Card
    @@cards = []

    def self.make_random_card
        card = ""

        card << ("A".."Z").to_a.sample

        self.new(card, self.random_state_of_card)
    end

    def self.random_state_of_card
        [true, false].sample
    end

    attr_reader :face_value, :face_up
    def initialize (face_value, face_up)
        @face_value = face_value
        @face_up = face_up

        @@cards << self
    end

    def hide
        @face_up = false
    end

    def reveal
        if @face_up
            return @face_value
        else
            return "nothing"
        end
    end

    def self.cards
        @@cards
    end
end