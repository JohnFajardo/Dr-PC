#require 'sinatra-activerecord'
require 'bundler'
require 'sqlite3'
require 'pry'
require 'require_all'
require 'rake'
require 'tty-prompt'
require 'active_record'
require_relative './config/config'
require_relative './classes/technician'

prompt = TTY::Prompt.new
prompt.ask('What is your name?', default: ENV['USER'])

techs = Technician.pluck(:name)
orders = JobOrder.pluck(:job_name)
clients = Client.pluck(:client_name)

options = ["View technicians", "View orders", "View clients"]


prompt.select("What do you want to do?", options, per_page: 15 )