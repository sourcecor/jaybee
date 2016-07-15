# /lib/tasks/job.rake
namespace :daily do
  desc "Test Crontab"
  task :go => [:log]

  # defined :log task
  task :log => :environment do
    # require 'lib/assets/sftp.rb'
    Log.create(log:"Call from Task.")
    # FTP
    config = {
      host: '52.192.165.51',
      user: 'ubuntu',
      password: 'ubuntu@Pass',
      port: 22,
      local_path: "#{Rails.root}/",
      directory_path: "/home/ubuntu/"
    }
    # 將 Hash 轉 Object, 以便 obj.attr
    ftp_conn = OpenStruct.new config
    # 下載
    Sftp.download(ftp_conn, ftp_conn.localPath, "README.md")
    # 上傳
    Sftp.upload(ftp_conn, ftp_conn.localPath, "README.md")
  end
end