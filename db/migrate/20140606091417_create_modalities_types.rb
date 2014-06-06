class CreateModalitiesTypes < ActiveRecord::Migration
  def change
    create_table :modalities_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
