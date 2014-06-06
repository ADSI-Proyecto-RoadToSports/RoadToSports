class CreateTypeRules < ActiveRecord::Migration
  def change
    create_table :type_rules do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
