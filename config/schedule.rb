# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
set :env_path,    '"$HOME/.rbenv/shims":"$HOME/.rbenv/bin"'
set :output, "/home/ubuntu/jaybee/current/log/cron_log.log"
set :environment, :production

# doesn't need modifications
# job_type :command, ":task :output"

job_type :rake,   %q{ cd :path && PATH=:env_path:"$PATH" RAILS_ENV=:environment bundle exec rake :task --silent :output }
job_type :runner, %q{ cd :path && PATH=:env_path:"$PATH" script/rails runner -e :environment ':task' :output }
job_type :script, %q{ cd :path && PATH=:env_path:"$PATH" RAILS_ENV=:environment bundle exec script/:task :output }

every 2.minutes do
  # command "/usr/bin/some_great_command"
  rake 'daily:go'
  # rake "some:great:rake:task"
end
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
