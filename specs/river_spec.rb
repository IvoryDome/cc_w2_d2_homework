require('minitest/autorun')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test

def setup
  whale_shark = Fish.new("Whale Shark")
  giant_oarfish = Fish.new("Giant Oarfish")
  giant_oceanic_manta_ray = Fish.new("Giant Oceanic Manta Ray")
  kaluga = Fish.new("Kaluga")
  @river = River.new("Congo River", [whale_shark, giant_oarfish, giant_oceanic_manta_ray, kaluga])
end

def test_name_of_river
result = @river.name
assert_equal("Congo River", result)
end


def test_number_of_fish_in_river
  result = @river.number_of_fish_in_river
  assert_equal(4, result)
end





























end
