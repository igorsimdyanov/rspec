# frozen_string_literal: true

RSpec.describe 'Матчер match' do
  let(:products) do
    [
      { name: 'Процессор', price: 40_000 },
      { name: 'Материнская плата', price: 10_000 },
      { name: 'Видеокарта', price: 300_000 }
    ]
  end

  it 'успешно работает' do
    expect(products).to match [
      { name: 'Процессор', price: a_value > 30_000 },
      { name: 'Материнская плата', price: a_value_between(5_000, 15_000) },
      { name: 'Видеокарта', price: a_value < 500_000 }
    ]
  end
end
