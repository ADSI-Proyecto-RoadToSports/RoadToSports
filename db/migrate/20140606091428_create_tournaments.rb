class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :modalities
      t.boolean :state
      t.date :date
      t.references :type_tournament, index: true
      t.references :acceptance, index: true

      t.timestamps
    end
  end
end
