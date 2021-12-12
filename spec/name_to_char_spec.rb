require 'name'

describe Name do
  describe '#name_to_char(name)' do
    it 'should get the name from the user and make it an array of uppercase characters' do
      subject.name = "alex"
      expect(subject.name_to_char).to eq ["A", "L", "E", "X"]
    end
  end

  describe '#get_name' do
    it 'should get user input and store it in @name' do
      name = subject.get_name
      expect(subject.name).to eq name
    end
  end

  describe '#name_to_number' do
    it 'should loop through the name_number_hash hash and add up all the values for the letters in the @name_char_array, return the score as an int' do
      subject.name = "alex"
      subject.name_to_char
      expect(subject.name_to_number).to eq 42
    end
  end

end