require 'httparty'

class FakeJob < ApplicationJob
  queue_as :default

  def perform(pokemon_id)
    sleep(2)
    base_url = 'https://pokeapi.co/api/v2/pokemon/'
    poke = Pokemon.find(pokemon_id)
    data = HTTParty.get(base_url + poke.name.downcase)
    poke_type = data['types'].first.dig('type', 'name')
    moves =  data['moves'].map { |move| move['move']['name'] }
    sprite = data['sprites']['front_default']
    # image_url
    poke.poke_type = poke_type
    poke.moves = moves
    poke.image_url = sprite
    poke.save
  end
end
