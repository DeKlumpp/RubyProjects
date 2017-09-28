module Api
    class Usuario < Bases::AutenticacaoDatabaseMysql
        self.table_name = 'USUARIO_GERENCIADOR'
    end
end
