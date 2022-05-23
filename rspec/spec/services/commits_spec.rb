# frozen_string_literal: true

RSpec.describe Services::Commits do
  it :call do
    expect(described_class).to respond_to(:call)
  end

  context 'возвращает количество коммитов' do
    # before do
    #   json = Array.new(12) { Hash.new }
    #   allow(JSON).to receive(:load).and_return(json)
    # end
    it :call do
      VCR.use_cassette('github.com', record: :once) do
        expect(described_class.call).to eq 12
      end
    end
  end
end
