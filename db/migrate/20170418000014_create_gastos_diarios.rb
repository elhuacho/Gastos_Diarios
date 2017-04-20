class CreateGastosDiarios < ActiveRecord::Migration
  def change
    create_table :gastos_diarios do |t|
      t.string :descripcion
      t.string :categoria
      t.decimal :monto

      t.timestamps null: false
    end
  end
end
