class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :teamA
      t.string :teamB
      t.references :modalitie, index: true
      t.references :tournament, index: true
      t.references :score, index: true
      t.references :fchlgmatch, index: true

      t.timestamps
    end
  end
end
