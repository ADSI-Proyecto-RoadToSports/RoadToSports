class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name
      t.text :description
      t.references :modalitie, index: true
      t.references :rule, index: true

      t.timestamps
    end
  end
end
