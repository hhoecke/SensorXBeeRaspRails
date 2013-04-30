# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
common_schedule = File.expand_path('../common_schedule.rb', __FILE__)
self.instance_eval File.read(common_schedule), common_schedule
# Example:
#
 set :output "log/whenever.log"
#
 every 2.minutes do
   runner "SensorViewController.live", environment => "development"
 end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
