$LOAD_PATH.unshift File.dirname(__FILE__) + '/../../lib'
$LOAD_PATH.unshift File.dirname(__FILE__) unless $LOAD_PATH.include?(File.dirname(__FILE__))

require 'bundler/setup'
require 'resque/tasks'
require 'job'
require 'env'

desc "Start the demo using `rackup`"
task :start do 
  exec "rackup config.ru"
end
