require('minitest/autorun')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestBears < MiniTest::Test

def setup
  @smokey = Bear.new("Smokey")
  @whale_shark = Fish.new("Whale Shark")
  @giant_oarfish = Fish.new("Giant Oarfish")
  @giant_oceanic_manta_ray = Fish.new("Giant Oceanic Manta Ray")
  @kaluga = Fish.new("Kaluga")
  @fish_of_the_congo_river = [@whale_shark, @giant_oarfish, @giant_oceanic_manta_ray, @kaluga]
  @kaluga = Fish.new("Kaluga")
  @river = River.new("Congo River", @fish_of_the_congo_river )
end



def test_eat_a_fish
result = @smokey.eat_a_fish(@whale_shark)
assert_equal(["Whale Shark"], result)
end

def test_is_starving?
  result = @smokey.is_starving?
  assert_equal(true, result)
end

def test_hunt_for_fish
  @smokey.hunt_for_fish(@river)
  assert_equal(["Whale Shark"], @smokey.stomach)
  assert_equal(["Giant Oarfish", "Giant Oceanic Manta Ray", "Kaluga"], @river.species_of_fish_in_river)
end




















end
