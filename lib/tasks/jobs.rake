# /lib/tasks/job.rake
namespace :daily do
  desc "Test Crontab"
  task :go => [:log]

  # defined :log task
  task :log => :environment do
    Log.create(log:"Call from Task.")
  end
end