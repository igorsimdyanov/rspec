class SolarSystem
  class NotExistingPlanetException < RuntimeError; end

  PLANETS = %i[
    mercury
    venus
    earth
    mars
    jupiter
    saturn
    uranus
    neptune
  ].freeze

  def self.method_missing(message)
    unless PLANETS.include? message.to_sym
      raise NotExistingPlanetException.new('Wrong planet')
    end
  end

  PLANETS.each_with_index do |planet, index|
    define_singleton_method(planet) { index + 1 }
  end
end
