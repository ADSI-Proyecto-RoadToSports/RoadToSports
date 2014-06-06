class CreateNewTypes < ActiveRecord::Migration
  def change
    create_table :new_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
