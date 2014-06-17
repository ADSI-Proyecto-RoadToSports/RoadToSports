class CreatePreRegistrations < ActiveRecord::Migration
  def change
    create_table :pre_registrations do |t|
      t.string :name
      t.string :mail
      t.references :modalities_type, index: true
      t.references :sport, index: true
      t.text :description
      
      t.references :tournament, index: true
      t.references :acceptance, index: true

      t.timestamps
    end
  end
end
