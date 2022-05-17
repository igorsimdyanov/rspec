# frozen_string_literal: true

RSpec.describe SolarSystem do
  it 'содержит методы-планеты' do
    %i[mercury venus earth mars jupiter saturn uranus neptune].each_with_index do |planet, i|
      expect(described_class.send(planet)).to eq i + 1
    end
  end

  it 'обращение к несуществующему методу' do
    expect { described_class.wrong }.to raise_error('Wrong planet')
  end
end
