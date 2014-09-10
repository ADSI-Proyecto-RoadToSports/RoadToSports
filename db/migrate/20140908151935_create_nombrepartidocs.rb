class CreateNombrepartidocs < ActiveRecord::Migration
  def change
    create_table :nombrepartidocs do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
