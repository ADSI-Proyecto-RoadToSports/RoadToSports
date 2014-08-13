class CreateIntegrantes < ActiveRecord::Migration
  def change
    create_table :integrantes do |t|
      t.string :nombre
      t.references :document_type, index: true
      t.string :documento
      t.string :ficha
      t.references :team, index: true

      t.timestamps
    end
  end
end
