class CreateNombrepartidods < ActiveRecord::Migration
  def change
    create_table :nombrepartidods do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
