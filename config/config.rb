require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: '../database.database.db')
ActiveRecord::Base.logger = nil
require_all 'classes'