# frozen_string_literal: true

RSpec.описание Services::CollectionGenerator, 'in rake-task' do
  в_контексте 'когда успешно выполняется' do
    let(:array_of_ten_elements) { Services::CollectionGenerator.call(1, 10) }

    тестируем 'генерацию массива из диапазона' do
      expect(array_of_ten_elements).to eq [*1..10]
    end

    тестируем 'генерацию массива и число 5 в него входит' do
      expect(array_of_ten_elements).to include 5
    end

    тестируем 'генерацию массива и число 100 в него входит' do
      expect(array_of_ten_elements).to include 10
    end
  end

  в_контексте 'возвращает ошибку' do
    тестируем 'если левая граница больше правой' do
      expect { Services::CollectionGenerator.call(10, 1) }.to raise_error(StandardError)
    end
  end
end
