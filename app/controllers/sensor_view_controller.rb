class SensorViewController < ApplicationController
	#define instance variables
	class << self
		attr_accessor :Serialout, :SerialinHex
	end
	#live view
  def live
  	#initialize string variable
  	self.class.Serialout = ""
  	#initilize serial connection
	ser = SensorNetwork::Application::config.serial_port
	#wait for the beginning of an api packet
	while ser.read(1)!="~" do
		puts "Wait"
	end
	#print packet in Hex and attach starting point in front
	render :text =>"{7e#{ser.read(21).unpack('H*')}}"
  end

  def history
  end
end
