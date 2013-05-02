class SensorViewController < ApplicationController
	#define instance variables
	class << self
		attr_accessor :Serialout, :SerialinHex
	end

	class Sens
		def initialize
			@value = SerialPort.new "/dev/cu.usbserial-AH01D4U5", 9600, 8, 1, SerialPort::NONE 
		end

		def value
			@value
		end

		def get_value
			@value.read(22)
		end
	end

	#meine_sensr = Sens.new
	#puts meine_sensr.value

	#meine_sensr.get_value
	#puts meine_sensr.value

	#live view
  def live
  	#initialize string variable
  #	self.class.Serialout = ""
  	#initilize serial connection
	#ser = SensorNetwork::Application::config.serial_port
	#wait for the beginning of an api packet
	#while ser.read(1)!="~" do
	#	puts "Wait"
	#end
	#print packet in Hex and attach starting point in front
	#render :text =>"{7e#{ser.read(44).unpack('H*')}}"
	#@sensor = Sensor.new(:captured =>"2013-04-29 14:20:00 +0200", :name =>"Frontpanel", :tempval =>"35,9")
	#@sensor.save
	#puts meine_sensr.value

	#meine_sensr.get_value
	#puts meine_sensr.value
	meine_sensr = Sens.new
	#render :text =>"{#{meine_sensr.value}}"

	a = meine_sensr.get_value
	puts meine_sensr.value
	#render :text =>"#{a.unpack('H*')}"
	
	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @value }
  	end
  end

  def history
  end
end
