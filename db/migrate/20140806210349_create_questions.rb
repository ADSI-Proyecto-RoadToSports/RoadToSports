class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.integer :category_id
      t.string :descripcion

      t.timestamps
    end
  end
end
