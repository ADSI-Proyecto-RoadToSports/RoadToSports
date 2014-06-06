class CreateTypeConfigurations < ActiveRecord::Migration
  def change
    create_table :type_configurations do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
