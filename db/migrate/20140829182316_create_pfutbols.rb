class CreatePfutbols < ActiveRecord::Migration
  def change
    create_table :pfutbols do |t|
      t.string :equipo1
      t.integer :puntos1
      t.string :equipo2
      t.integer :puntos2
      t.datetime :fecha
      t.boolean :estado
      t.integer :user_id
      t.integer :tournament_id
      t.integer :puntoso1
      t.integer :puntoso2
      t.timestamps
    end
  end
end
