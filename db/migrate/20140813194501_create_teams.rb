class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nombre,
      t.references :sport, index: true
      t.timestamps,
      t.boolean :active
      t.string :lider
    end
  end
end
