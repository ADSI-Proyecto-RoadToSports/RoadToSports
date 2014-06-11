class CreateFchLgMatches < ActiveRecord::Migration
  def change
    create_table :fch_lg_matches do |t|
      t.date :startdate
      t.date :endingdate
      t.string :place
      t.text :description
      t.string :team
      t.references :tournament, index: true

      t.timestamps
    end
  end
end
