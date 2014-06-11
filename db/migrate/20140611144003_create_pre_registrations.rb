class CreatePreRegistrations < ActiveRecord::Migration
  def change
    create_table :pre_registrations do |t|
      t.string :name
      t.string :modalities
      t.text :description
      t.references :user, index: true
      t.references :tournament, index: true
      t.references :acceptance, index: true

      t.timestamps
    end
  end
end
