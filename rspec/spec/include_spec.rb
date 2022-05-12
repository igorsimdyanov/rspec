RSpec.describe 'Коллекции в Rspec' do
  it 'можно проверять при помощи матчера include' do
    expect([1, 2, 3, 4, 5]).to include 3, 5
    expect([1, 2, 3, 4, 5]).not_to include 100
    expect('Hello world!').to include 'world', 'Hello'
  end

  context 'в случае хэшей' do
    let(:product) {
      {
        name: 'Процессор',
        price: 40_000,
        id: 534563244
      }
    }

    it 'так же можно проверять при помощи матчера include' do
      expect(product).to include :price
      expect(product).to include id: 534563244
    end
  end
end
