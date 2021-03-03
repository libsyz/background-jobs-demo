class Pokemon < ApplicationRecord
  after_save :enrich_pokemon
  serialize :moves, Array

  def enriched?
    self.moves.present? && self.image_url.present? && self.poke_type.present?
  end

  def enrich_pokemon
    FakeJob.perform_later(self.id)
  end
end
