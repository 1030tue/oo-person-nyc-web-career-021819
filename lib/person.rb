class Person

  attr_reader :name, :happiness
#  attr_writer :happiness
  attr_accessor :bank_account, :hygiene

def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
  @name = name
  @bank_account = bank_account
  @happiness = happiness
  @hygiene = hygiene
end

def happiness= (points)
  @happiness = points
  if  points > 10
      @happiness = 10
    elsif points < 0
      @happiness = 0
    else
      @happiness = points
  end
end

def hygiene
  self.hygiene = @hygiene
  if  @hygiene> 10
      hygiene = 10
    elsif @hygiene < 0
      hygiene = 0
    else
      @hygiene
  end
end


def happy?
  self.happiness = @happiness
  if @happiness > 7
      true
    else
      false
    end
end


def clean?
  self.hygiene = @hygiene
  if @hygiene > 7
    true
    else
      false
    end
end

def get_paid(money)
  @bank_account += money
  return "all about the benjamins"
end

def  take_bath
  @hygiene += 4
  self.hygiene = @hygiene
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  @hygiene -=3
  @happiness +=2
  self.hygiene = @hygiene
  self.happiness = @happiness
  return "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  return "Hi #{friend.name}! It's #{self.name}. How are you?"
end


def start_conversation(name, topic)
  if topic == "politics"
    self.happiness -= 2
    name.happiness -= 2
    return 'blah blah partisan blah lobbyist'
  elsif topic == "weather"
    self.happiness += 1
    name.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
  end

end

end
