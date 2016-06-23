class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
    	t.string :nombre_a
    	t.string :app
    	t.string :apm
    	t.string :direccion
    	t.date :fecha_nac
    	t.string :telefono
    	t.string :email
      t.references :cat_estatuses, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
