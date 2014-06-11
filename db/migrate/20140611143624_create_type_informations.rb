class CreateTypeInformations < ActiveRecord::Migration
  def change
    create_table :type_informations do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
