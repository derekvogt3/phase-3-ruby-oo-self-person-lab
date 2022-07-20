# your code goes here
class Person

    attr_reader :name, :happiness, :hygiene
    attr_writer :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def bank_account
        @bank_account
    end

    def happiness=(value)

        if value > 10 
            @happiness = 10
        
        elsif value < 0 
            @happiness = 0

        else 
            @happiness = value
        end
    end

    def hygiene=(value)

        if value > 10 
            @hygiene = 10
        
        elsif value < 0 
            @hygiene = 0

        else 
            @hygiene = value
        end
    end

    def clean?

        if @hygiene > 7

            return true

        else

            return false
        
            
        end
    end


    def happy?

        if @happiness > 7

            return true

        else

            return false
        
            
        end
    end

    def get_paid(amt)
        @bank_account += amt
        "all about the benjamins"
    
    end

    def take_bath

            self.hygiene = @hygiene + 4


        "♪ Rub-a-dub just relaxing in the tub ♫"

    end

    def work_out
        hygine_val = @hygiene - 3
        happier_val = @happiness + 2

        self.hygiene = hygine_val
        self.happiness = happier_val

        "♪ another one bites the dust ♫"

    end

    def call_friend(friend)

        friend.happiness += 3
        self.happiness +=3

        "Hi #{friend.name}! It's #{self.name}. How are you?"


    end

    def start_conversation(friend, topic)

        if topic == "politics"

            friend.happiness -= 2
            self.happiness -=2

            return "blah blah partisan blah lobbyist"

        elsif topic == "weather"

            friend.happiness += 1
            self.happiness +=1

            return "blah blah sun blah rain"

        else

            return "blah blah blah blah blah"





        end


    end



end