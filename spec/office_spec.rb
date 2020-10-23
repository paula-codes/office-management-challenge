require 'office'
require 'meeting_room'

describe Office do

  let(:room) { MeetingRoom.new("Test room 1") }
  let(:room2) { MeetingRoom.new("Test room 2") }

  describe '#initialize' do
    it 'has a storage for meeting rooms' do
      expect(subject.meeting_rooms).to eq []
    end
  end

  describe '#add_room' do
    it 'adds a meeting room to the office' do
      subject.add_room(room)
      expect(subject.meeting_rooms).to include room
    end
  end

  describe '#list_rooms' do
    it 'lists all the rooms in the office' do
      subject.add_room(room)
      subject.add_room(room2)
      expect(subject.list_rooms).to eq subject.meeting_rooms
    end
  end

  describe '#available_rooms' do
    it 'lists all the available rooms in the office' do
      subject.add_room(room)
      room.enter
      subject.add_room(room2)
      expect(subject.available_rooms).to include room2
    end
  end
end
