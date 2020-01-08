# your code goes here
class Person
    attr_reader :name

    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
    end

    def happiness
        @happiness.clamp(0,10)
    end
    
#       if num > 10 
#          @happiness = 10
#        elsif 
#            num < 0 
#            @happiness = 0 
#        else 
#            @happiness = num
#        end
#    end

    def hygiene
        @hygiene.clamp(0,10)
    end

#    def hygiene=(num)
#        if num >  10 
#            @hygiene = 10
#        elsif 
#            num < 0 
#            @hygiene = 0
#        else 
#            @hygiene = num
#        end
#    end

    def happy? 
        @happiness > 7 ? true : false
    end

#    def happy?
#        if @happiness > 7 
#            return true
#        else 
#            return false
#        end
#    end

    def clean?
        @hygiene > 7 ? true : false
    end

#    def clean?
#        if @hygiene > 7 
#            return true
#        else 
#            return false
#        end
#    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        total = @hygiene += 4
        self.hygiene=(total)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene -= 3)
        self.happiness=(@happiness += 2)
        return "♪ another one bites the dust ♫"
    end

#    def work_out
#        total = @hygiene -= 3
#        happy_total = @happiness += 2

#        self.hygiene=(@hygiene -= 3)
#        self.happiness=(happy_total)

#       return "♪ another one bites the dust ♫"
#   end


    def call_friend(friend)
        friend.happiness+=(3)
        self.happiness=(@happiness +=3)

        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness-=(2)
            self.happiness=(@happiness -=2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness+=(1)
            self.happiness=(@happiness += 1)
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end
end
