class WorkLog < ActiveRecord::Base
  attr_accessible :actor_id, :notes, :work_id, :work_time

  has_many :actions
  has_one :actors

end
