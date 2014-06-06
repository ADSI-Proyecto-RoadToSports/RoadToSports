class CreateTypeRoles < ActiveRecord::Migration
  def change
    create_table :type_roles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
