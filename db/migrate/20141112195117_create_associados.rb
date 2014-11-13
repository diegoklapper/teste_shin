class CreateAssociados < ActiveRecord::Migration
  def change
    create_table :associados do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cpf
      t.string :rg
      t.string :pis_pasep
      t.string :ctps
      t.string :nome_mae
      t.string :convenio

      t.timestamps
    end
  end
end
