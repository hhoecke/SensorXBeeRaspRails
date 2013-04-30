class Sensor < ActiveRecord::Base
  attr_accessible :captured, :name, :tempval
end
