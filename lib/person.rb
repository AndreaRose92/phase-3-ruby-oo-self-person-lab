
class Person

    
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    
    def happiness=(value)
        @happiness = [value, 0, 10].sort[1]
    end

    def hygiene=(value)
        @hygiene = [value, 0, 10].sort[1]
    end
    
    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7 
    end

    def get_paid(money)
        self.bank_account += money
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -=  3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if (topic == "politics")
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif (topic == "weather")
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end