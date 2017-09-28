module Bases
    class AutenticacaoDatabaseSql < ActiveRecord::Base
        self.abstract_class = true
        establish_connection "development_sql"
    end
end