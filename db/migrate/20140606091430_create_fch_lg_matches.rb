class CreateFchLgMatches < ActiveRecord::Migration
  def change
    create_table :fch_lg_matches do |t|
      t.date :strart_date
      t.date :ending_date
      t.string :place
      t.text :description
      t.string :team
      t.references :tournament, index: true

      t.timestamps
    end
  end
end
