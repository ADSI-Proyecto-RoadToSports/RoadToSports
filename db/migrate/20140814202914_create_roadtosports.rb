class CreateRoadtosports < ActiveRecord::Migration
  def change
    create_table :roadtosports do |t|
      t.string :registros
      t.string :index
      t.string :acerca
      t.string :contacto

      t.timestamps
    end
  end
end
