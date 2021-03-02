class PokemonsController < ApplicationController
  def new

  end

  def index
    @pokemon = Pokemon.new
    @pokemons = Pokemon.all
  end

  def show
  end

  def create
  end
end
