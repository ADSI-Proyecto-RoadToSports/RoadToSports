class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name
      t.text :description
      t.references :modalitiestype, index: true

      t.timestamps
    end
  end
end
