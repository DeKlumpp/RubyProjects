module Api
    class PessoaJuridica < Bases::AutenticacaoDatabaseSql
        self.table_name = 'TB_PessoaJuridica'
    end
end