require_relative './actor'

class Movie
  def initialize(actor)
    @actor = actor
  end

  def start_shoot
    if @actor.ready?
      @actor.start_act
      @actor.fall_off_cliff
      @actor.end_act
    end
  end
end