class CreateAutenticacaoDatabaseSqls < ActiveRecord::Migration
  def change
    create_table :autenticacao_database_sqls do |t|

      t.timestamps null: false
    end
  end
end
