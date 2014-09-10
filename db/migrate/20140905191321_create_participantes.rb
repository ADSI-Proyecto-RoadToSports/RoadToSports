class CreateParticipantes < ActiveRecord::Migration
  def change
    create_table :participantes do |t|
      t.string :nombre
      t.string :email
      t.integer :document_type_id
      t.string :documento
      t.boolean :estado
      t.string :ficha
      t.references :sports, index: true

      t.timestamps
    end
  end
end
