class Bear

attr_accessor :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def eat_a_fish(fish)
    @stomach << fish.species
    return @stomach
  end

  def is_starving?
    @stomach.empty?
  end

  def hunt_for_fish(river)
    fish_to_remove = river.fish_in_river.shift.species
    @stomach << fish_to_remove
    # river.fish.shift
  end


























end
