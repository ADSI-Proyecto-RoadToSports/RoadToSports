class CreateNovelties < ActiveRecord::Migration
  def change
    create_table :novelties do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
