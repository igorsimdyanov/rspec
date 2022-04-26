RSpec.describe 'Ruby успешно выполняет' do
  it 'сложение двух чисел' do
    expect(4 + 12).to be 16
    expect(2 + 2).to be 4
  end

  it 'генерацию массива из диапазона' do
    expect([*1..10]).to include 5
  end

  it 'генерацию массива из диапазона 100' do
    expect([*1..10]).to include 3
  end
end
