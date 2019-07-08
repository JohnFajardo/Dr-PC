#require 'sinatra-activerecord'
require 'bundler'
require 'sqlite3'
require 'pry'
require 'require_all'
require 'rake'
require 'tty-prompt'
require_all 'classes'


prompt = TTY::Prompt.new
prompt.ask('What is your name?', default: ENV['USER'])
