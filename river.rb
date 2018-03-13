class River

  attr_reader :name
  attr_accessor :fish_in_river

  def initialize(name, fish_in_river = [])
    @name = name
    @fish_in_river = fish_in_river
  end


  def number_of_fish_in_river
  return @fish_in_river.count
  end

  def species_of_fish_in_river
    species_of_fish_in_river  = []
    for fish in fish_in_river
      species_of_fish_in_river << fish.species
    end
  return species_of_fish_in_river
end



end
