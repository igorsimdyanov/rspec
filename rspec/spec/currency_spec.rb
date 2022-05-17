RSpec.describe Currency do  
  let(:currency) { described_class.new }

  before do
    stub_const('Currency::SOURCE', 'http://localhost:9292/latest.json')
  end

  it :usd do
    expect(currency.usd).to be > 0
    expect(currency.usd).to be_kind_of(Float)
  end

  it :eur do
    expect(currency.eur).to be > 0
    expect(currency.eur).to be_kind_of(Float)
  end
end

# RSpec.describe Currency do  
#   let(:currency) { instance_double('Currency') }

#   before do
#     allow(currency).to receive(:usd).and_return(63.0)
#     allow(currency).to receive(:eur).and_return(65.0)
#   end

#   it :usd do
#     expect(currency.usd).to be > 0
#     expect(currency.usd).to be_kind_of(Float)
#   end

#   it :eur do
#     expect(currency.eur).to be > 0
#     expect(currency.eur).to be_kind_of(Float)
#   end
# end
