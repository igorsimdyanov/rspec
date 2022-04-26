require_relative '../../lib/services/collection_generator'

RSpec::Expectations.configuration.on_potential_false_positives = :nothing

RSpec.describe Services::CollectionGenerator do
  context 'когда входные данные корректные' do
    xit 'строковые значения' do
      # TODO: По-хорошему нужно бы еще добавить дипазон
    end
    xit 'массив' do
    end
    xit 'объект' do
    end
  end
  context 'когда успешно выполняется' do
    let(:array_of_ten_elements) { Services::CollectionGenerator.call(1, 10) }

    it 'генерацию массива из диапазона' do
      expect(array_of_ten_elements).to eq [*1..10]
    end

    it 'генерацию массива и число 5 в него входит' do
      expect(array_of_ten_elements).to include 5
    end

    it 'генерацию массива и число 100 в него входит' do
      expect(array_of_ten_elements).to include 10
    end
  end

  context 'возвращает ошибку' do
    it 'если левая граница больше правой' do
      expect { Services::CollectionGenerator.call(10, 1) }.to raise_error(StandardError)
    end
  end
end
