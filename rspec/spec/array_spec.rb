# frozen_string_literal: true

RSpec.describe Array do
  it_behaves_like 'Enumerable', Array
  # %i[each map select reject reduce].each do |iterator|
  #   it(iterator) { expect(empty_arr).to respond_to(iterator) }
  # end

  context 'при обращении к квадратным скобкам', :enumerable do
    let(:arr) { [1, 2, 3, 4, 5] }

    it 'можно извлечь значение по индексу' do
      expect(arr).to respond_to(:[])
      expect(arr[0]).to eq 1
      expect(arr[-1]).to eq 5
    end
  end
end
