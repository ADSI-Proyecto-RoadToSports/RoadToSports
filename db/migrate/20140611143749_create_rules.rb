class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :name
      t.text :description
      t.boolean :state

      t.timestamps
    end
  end
end
