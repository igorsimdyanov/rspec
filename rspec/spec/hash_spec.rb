RSpec.describe Hash do
  it_behaves_like 'Enumerable', Hash

  context 'при обращении к квадратным скобкам', :enumerable do
    let(:hsh) { { fst: :value } }

    it 'можно извлечь значение по индексу' do
      expect(hsh).to respond_to(:[])
      expect(hsh[:fst]).to eq :value
    end

    it 'можно значить значение' do
      expect(hsh).to respond_to(:[]=)
      hsh[:snd] = 1
      expect(hsh[:snd]).to eq 1
    end

    it 'можно перезаписать значение' do
      expect(hsh).to respond_to(:[]=)
      hsh[:fst] = 1
      expect(hsh[:fst]).to eq 1
    end
  end
end
