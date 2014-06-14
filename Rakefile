# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake/testtask'

Rails.application.load_tasks
namespace :test do

desc "Test worker source"
Rake::TestTask.new(:worker) do |t|
  t.libs << "test"
  t.pattern = 'test/workers/**/*_test.rb'
  t.verbose = true
end

end

Rake::Task[:test].enhance { Rake::Task["test:worker"].invoke }
