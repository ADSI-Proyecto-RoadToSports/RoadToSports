class CreateTypeChanges < ActiveRecord::Migration
  def change
    create_table :type_changes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
