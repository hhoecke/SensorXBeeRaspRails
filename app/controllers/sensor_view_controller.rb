class SensorViewController < ApplicationController

		#initialize instance var.
	def initialize
		@value = SerialPort.new "/dev/cu.usbserial-AH01D4U5", 9600, 8, 1, SerialPort::NONE
		@dbval = ""
		end
	#getter value
	def value
		@value
	end
	#getter dbval
	def dbval
		@dbval
	end
	#read from serialport
	def read_value
		wait for the beginning of an api packet
		while ser.read(1)!="~" do
		 	puts "Wait"
		end
		@value.read(22)
	end
	#setter
	def write_dbval
		@dbval = Xbee.new(:name =>"Frontpanel", :tempval => @dbval.read_value)
	end

	#live view
	def live
	end

	def show
  		@xbee = Xbee.all
	end

	def history
	end	
end



#Some old Code

	#render :text =>"{#{meine_sensr.value}}"
	#render :text =>"#{a.unpack('H*')}"
	#meine_sensr = Sens.new
	#puts meine_sensr.value

	#meine_sensr.get_value
	#puts meine_sensr.value

	#initialize string variable
  	#self.class.Serialout = ""
  	#initilize serial connection
	#ser = SensorNetwork::Application::config.serial_port
	#wait for the beginning of an api packet
	#while ser.read(1)!="~" do
	# 	puts "Wait"
	#end
	#print packet in Hex and attach starting point in front
	#render :text =>"{7e#{ser.read(44).unpack('H*')}}"
	#@sensor = Sensor.new(:captured =>"2013-04-29 14:20:00 +0200", :name =>"Frontpanel", :tempval =>"35,9")
	#@sensor.save
	#puts meine_sensr.value

	#meine_sensr.get_value
	#puts meine_sensr.value
