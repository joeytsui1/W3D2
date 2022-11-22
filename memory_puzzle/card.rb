class Card
    VALUES = ("a".."z").to_a

    def self.shuffled_pairs(num_pairs)
        possible_val = VALUES.shuffle!
        cards = []
         num_pairs.times do
            pair_val = possible_val.pop

            card_1 = Card.new(pair_val)
            card_2 = Card.new(pair_val)

            cards << card_1 << card_2
        end
        cards.shuffle
    end

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