require_relative 'meeting_room'


class Office
  attr_reader :meeting_rooms

  def initialize
    @meeting_rooms = []
  end

  def add_room(name)
    @meeting_rooms << name
  end

  def list_rooms
    @meeting_rooms
  end

  def available_rooms
    @meeting_rooms.each do |room|
      if room.room_available
        room.name
      end
    end
  end

end
