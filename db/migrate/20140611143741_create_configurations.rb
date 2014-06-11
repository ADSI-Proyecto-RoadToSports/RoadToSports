class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.string :name
      t.text :description
      t.references :typeconfiguration, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
