class RouletteController < ApplicationController

  def home
    @roulette = Roulette.new
  end

  def new
    @roulette = Roulette.new
  end

  def create
    @roulette = Roulette.new
  end

end
