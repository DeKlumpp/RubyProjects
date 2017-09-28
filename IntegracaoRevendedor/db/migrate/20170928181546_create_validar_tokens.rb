class CreateValidarTokens < ActiveRecord::Migration
  def change
    create_table :validar_tokens do |t|
      t.string :cnpj
      t.string :email
      t.string :token

      t.timestamps null: false
    end
  end
end
