class CreateNombrepartidoms < ActiveRecord::Migration
  def change
    create_table :nombrepartidoms do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
