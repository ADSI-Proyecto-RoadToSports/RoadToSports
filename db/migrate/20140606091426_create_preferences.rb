class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :name
      t.text :description
      t.references :type_preference, index: true
      t.references :session, index: true

      t.timestamps
    end
  end
end
