module Bases
    class AutenticacaoDatabaseMysql < ActiveRecord::Base
        self.abstract_class = true
        establish_connection :development_mysql
    end
end
