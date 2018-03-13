require('minitest/autorun')
require_relative('../fish.rb')


class TestFish < MiniTest::Test

def setup
  @fish = Fish.new("Dog Fish")
end

def test_fish_getter
  result = @fish.species
  assert_equal("Dog Fish", result)
end













end
