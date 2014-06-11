class CreateNovelties < ActiveRecord::Migration
  def change
    create_table :novelties do |t|
      t.string :name
      t.text :description
      t.references :newtype, index: true

      t.timestamps
    end
  end
end
