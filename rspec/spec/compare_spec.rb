RSpec.describe 'Операторы в Ruby' do
  it :== do
    expect(1).to be == 1
  end
  it :< do
    expect(1).to be < 2
  end
  it :> do
    expect(1).to be > 0
  end
  it :>= do
    expect(1).to be >= 0
  end
  it :>= do
    expect(1).to be >= 1
  end
end
