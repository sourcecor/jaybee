class Jcoinm < ActiveRecord::Base
  belongs_to :user
  has_many :jcoinds ,dependent: :destroy
end
