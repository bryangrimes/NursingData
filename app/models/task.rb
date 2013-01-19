class Task < ActiveRecord::Base
  attr_accessible :action_id, :description, :name, :order
end
