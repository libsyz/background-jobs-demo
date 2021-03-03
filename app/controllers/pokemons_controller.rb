class PokemonsController < ApplicationController
  def new

  end

  def index
    @pokemon = Pokemon.new
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def create
    @pokemon = Pokemon.new(poke_params)
    @pokemon.save
    redirect_to pokemon_path(@pokemon)
  end

  private

  def poke_params
    params.require(:pokemon).permit(:name)
  end
end
