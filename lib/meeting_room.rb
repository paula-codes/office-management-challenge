require_relative 'sms'

class MeetingRoom
  attr_reader :room_available, :name

  def initialize(name, sms: nil)
    @room_available = true
    @name = name
    @sms = SMS.new
  end

  def enter
    fail 'Room is already in use!' if @room_available == false
    
    @room_available = false
  end

  def leave
    @room_available = true
    @sms.send_text
  end


end
