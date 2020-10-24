require 'meeting_room'

describe MeetingRoom do
  let(:subject) { MeetingRoom.new('Test room') }
  
  describe '#initialize' do
    
    it 'confirms a meeting room is available (or not)' do
      expect(subject.room_available).to eq true
    end

    it 'meeting room has a name' do
      expect(subject.name).to eq 'Test room'
    end
  end

  describe '#enter' do
    
    it 'makes the room unavailable upon entering' do
      subject.enter
      expect(subject.room_available).to eq false
    end

    it 'raises an error if room is already in use' do
      subject.enter
      expect { subject.enter }.to raise_error 'Room is already in use!'
    end
  end

  describe '#leave' do
    
    it 'makes the room available when people leave' do
      subject.enter
      subject.leave
      expect(subject.room_available).to eq true
    end

    # it 'sends text when a meeting room becomes available' do
    #   sms = SMS.new
    #   subject.enter
    #   subject.leave
    #   expect(sms.send_text).
    # end
  end 
end
