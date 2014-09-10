class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :name
      t.text :description
      t.boolean :state
      t.integer :sport_id
	    t.integer :type_rule_id
      t.timestamps
    end
  end
end
