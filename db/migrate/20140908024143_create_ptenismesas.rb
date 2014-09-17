class CreatePtenismesas < ActiveRecord::Migration
  def change
    create_table :ptenismesas do |t|
      t.string :participante1
      t.string :puntos1
      t.string :participante2
      t.string :puntos2
      t.integer :tournament_id
      t.datetime :fecha
      t.boolean :estado
      t.integer :user_id
      t.boolean :gano1
      t.boolean :gano2
      t.timestamps
    end
  end
end
