class MeetingRoom
  attr_reader :room_available, :name

  def initialize(name)
    @room_available = true
    @name = name
  end

  def enter
    fail 'Room is already in use!' if @room_available == false
    
    @room_available = false
  end

  def leave
    @room_available = true
  end

end
