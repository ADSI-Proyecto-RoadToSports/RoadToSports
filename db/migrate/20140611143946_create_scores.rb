class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.text :description
      t.date :datescore
      t.references :modalitie, index: true
      t.references :team, index: true

      t.timestamps
    end
  end
end
