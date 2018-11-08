require 'spec_helper'

describe 'Unfamiliar Code' do
  describe 'what_method_executes_first' do
    it 'returns the String name of the method that' do
      expect(what_method_executes_first).to eq("start_game")
    end
  end

  describe 'all_valid_inputs' do
    it 'returns an Array of all inputs to the first method that will not raise an error' do
      expect(all_valid_inputs).to contain_exactly(2,3,4,5,6)
    end
  end

  describe 'what_is_the_output_type' do
    it 'returns the data type that is returned when this code is executed' do
      expect(what_is_the_output_type.downcase).to eq("hash")
    end
  end

  describe 'what_method_would_change_if_playing_euchre' do
    it 'returns the String name of the method that would need to change to adapt the card deck' do
      expect(what_method_would_change_if_playing_euchre).to eq("create_deck")
    end
  end

  describe 'changing_amount_dealt' do
    it 'returns the String name of the method that we would need to change to modify the amount of cards dealt' do
      expect(changing_amount_dealt).to eq("setup_game")
    end
  end
end
