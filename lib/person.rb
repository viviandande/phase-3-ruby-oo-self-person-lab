# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness =  happiness
        @hygiene = hygiene
    end

    def name
        @name
    end

    def happiness=(value)
        @happiness = [[0, value].max, 10].min
    end

    def hygiene=(value)
        @hygiene = [[0, value].max, 10].min
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = hygiene - 3
        self.happiness = happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = self.happiness - 2
            friend.happiness = friend.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            friend.happiness = friend.happiness + 1
            "blah blah sun blah rain"
            
        else "blah blah blah blah blah"
        end

      end
end