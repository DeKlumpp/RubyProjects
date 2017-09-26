class CreateValidar_Tokens < ActiveRecord::Migration
  def change
    create_table :validar_tokens do |t|
      t.string :email
      t.string :token

      t.timestamps null: false
    end
  end
end
