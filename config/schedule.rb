# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :output, "/home/ubuntu/jaybee/current/log/cron_log.log"
every 2.minutes do
  # command "/usr/bin/some_great_command"
  runner "Log.info 'exec from cron job.'"
  # rake "some:great:rake:task"
end
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
