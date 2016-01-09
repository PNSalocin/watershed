# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Dir[File.join(File.dirname(__FILE__), 'tasks/*.rake')].each {|f| load f }

Rails.application.load_tasks
