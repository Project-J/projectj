# require 'bunny'
#
# class Antenna
#   def self.emit(object)
#     conn = Bunny.new()
#     conn.start
#     ex = conn.exchange('projectj.spree.' + object.class.name)
#     ex.publish object.to_json, :content_type => 'application/json'
#     conn.stop
#   end
# end
