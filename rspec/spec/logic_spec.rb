RSpec.describe 'В Ruby' do
  it 'истинные значения' do
    expect(true).to be_truthy
    expect(0).to be_truthy
    expect([]).to be_truthy
    expect('').to be_truthy
    expect(Object.new).to be_truthy
  end
  it 'ложные значения' do
    expect(false).to be_falsey
    expect(nil).to be_falsey
  end
end
