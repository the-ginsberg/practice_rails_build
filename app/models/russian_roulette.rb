class RussianRoulette < ActiveRecord::Base

  def shoot
    @russian_roulette.round++
    if rand(1..6) == @russian_roulette.bulloc
      @russian_roulette.alive = false
    end
  end

end
