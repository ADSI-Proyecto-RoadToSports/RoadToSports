class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :team_a
      t.string :team_b
      t.references :modalitie, index: true
      t.references :tournament, index: true
      t.references :score, index: true
      t.references :fch_lg_match, index: true

      t.timestamps
    end
  end
end
