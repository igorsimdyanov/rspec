RSpec.describe Services::BlockGenerator do
  it :call do
    expect { |block| described_class.call(&block) }.to yield_control
  end
end
