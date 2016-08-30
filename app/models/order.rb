class Order < ActiveRecord::Base
  include AASM

  aasm :column => 'status' do
    state :sleeping, initial: true
    state :paid, :not_pay, :success, :fail, :running, :shipping, :change, :return, :refund

    event :pay do
      transitions :from => :sleeping, :to => :running
    end

  end
end
