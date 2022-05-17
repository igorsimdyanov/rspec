# frozen_string_literal: true

RSpec.describe Array do
  let(:arr) { [1, 2, 3, 4, 5] }

  it 'оператор << изменяет массив' do
    expect { arr << 6 }.to change { arr.size }.by(1)
  end
end
