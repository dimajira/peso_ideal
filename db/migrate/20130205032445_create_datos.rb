class CreateDatos < ActiveRecord::Migration
  def change
    create_table :datos do |t|
      t.string :genero
      t.integer :estatura
      t.string :unidades

      t.timestamps
    end
  end
end
