module Bases
    class AutenticacaoDatabaseSqlMoto < ActiveRecord::Base
        self.abstract_class = true
        establish_connection :development_sql_moto
    end
end
