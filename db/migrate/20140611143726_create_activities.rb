class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.boolean :state
      t.text :description

      t.timestamps
    end
  end
end
