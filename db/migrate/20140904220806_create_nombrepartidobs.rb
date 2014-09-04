class CreateNombrepartidobs < ActiveRecord::Migration
  def change
    create_table :nombrepartidobs do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
