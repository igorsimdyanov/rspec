RSpec.describe Services::CollectionGenerator do
  context 'когда данные корректные' do
    example 'генерацию массива из диапазона' do
      expect(service_object(1..100)).not_to include array_rand(1..100)
    end
  end
end
