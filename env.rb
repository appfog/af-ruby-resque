require 'logger'
require 'redis'
require 'resque'
require 'cf-runtime'


Resque.logger.formatter = Resque::VeryVerboseFormatter.new
Resque.logger.level = Logger::DEBUG

def redis_client
  if CFRuntime::CloudApp.running_in_cloud?
    client = CFRuntime::RedisClient.create
  else
    client = Redis.new
  end
end

Resque.redis = redis_client
