class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.references :modalitiestype, index: true
      t.references :sport, index: true
      t.boolean :state
      t.date :date
      t.references :typetournament, index: true

      t.timestamps
    end
  end
end
