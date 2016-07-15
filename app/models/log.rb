class Log < ActiveRecord::Base
  def self.info(message)
    Log.create(log: message)
  end
end
