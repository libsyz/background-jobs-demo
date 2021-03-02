class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type
      t.string :image_url
      t.string :moves

      t.timestamps
    end
  end
end
