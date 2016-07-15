# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
job_type :rbenv_rake, %Q{export PATH=/opt/rbenv/shims:/opt/rbenv/bin:/usr/bin:$PATH; eval "$(rbenv init -)"; \
                         cd :path && bundle exec rake :task --silent :output }

set :bundle_command, "/home/ubuntu/.rbenv/shims/bundle"
set :output, "/home/ubuntu/jaybee/current/log/cron_log.log"
set :environment, :production
every 2.minutes do
  # command "/usr/bin/some_great_command"
  rbenv_rake 'daily:go'
  # rake "some:great:rake:task"
end
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
