RSpec.describe 'Коллекции в Rspec' do
  it 'можно проверять при помощи матчера start_with' do
    expect([1, 2, 3, 4, 5]).to start_with 1, 2, 3
    expect('Hello, world!').to start_with 'Hello'
  end

  it 'можно проверять при помощи матчера end_with' do
    expect([1, 2, 3, 4, 5]).to end_with 4, 5
    expect('Hello, world!').to end_with 'world!'
  end

  it 'можно проверять при помощи матчера all' do
    expect([2, 4, 6, 8]).to all be_even # 4.even? hello? => be_hello
  end
end
