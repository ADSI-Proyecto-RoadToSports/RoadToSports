class CreateNovelties < ActiveRecord::Migration
  def change
    create_table :novelties do |t|
      t.string :name
      t.text :description
      t.references :new_type, index: true

      t.timestamps
    end
  end
end
