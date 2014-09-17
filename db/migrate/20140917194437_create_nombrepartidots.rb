class CreateNombrepartidots < ActiveRecord::Migration
  def change
    create_table :nombrepartidots do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
