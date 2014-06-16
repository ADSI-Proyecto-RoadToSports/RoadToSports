class CreateModalities < ActiveRecord::Migration
  def change
    create_table :modalities do |t|
      t.string :players
      t.references :activity, index: true
      t.references :tournament, index: true
      t.references :modalities_type, index: true
      t.references :sport, index: true

      t.timestamps
    end
  end
end
