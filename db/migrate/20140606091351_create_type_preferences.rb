class CreateTypePreferences < ActiveRecord::Migration
  def change
    create_table :type_preferences do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
