class CreatePbaloncestos < ActiveRecord::Migration
  def change
    create_table :pbaloncestos do |t|
      t.string :equipo1
      t.string :puntos1
      t.string :puntoso1
      t.string :equipo2
      t.string :puntos2
      t.string :puntoso2
      t.integer :tournament_id
      t.datetime :fecha
      t.boolean :estado
      t.integer :user_id

      t.timestamps
    end
  end
end
