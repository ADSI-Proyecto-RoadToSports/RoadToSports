class CreateIntegrantes < ActiveRecord::Migration
  def change
    create_table :integrantes do |t|
      t.string :nombre
      t.references :documenttype, index: true
      t.string :documento
      t.string :ficha
      t.references :team, index: true
      t.boolean :lesion

      t.timestamps
    end
  end
end
