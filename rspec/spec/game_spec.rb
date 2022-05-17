RSpec.describe Game do
  let(:mario) { spy('Mario') }                     # 1. Подготовка (Arrange)

  it :play do
    described_class.play(mario)                    # 2. Действие (Act)
    expect(mario).to have_received(:jump)          # 3. Проверка (Assert)
  end
end

# RSpec.describe Game do
#   let(:mario) { double('Mario').as_null_object }   # 1. Подготовка (Arrange)

#   before do
#     allow(mario).to receive(:jump)
#   end

#   it :play do
#     described_class.play(mario)                    # 2. Действие (Act)
#     expect(mario).to have_received(:jump)          # 3. Проверка (Assert)
#   end
# end

# RSpec.describe Game do
#   let(:mario) { double('Mario') }   # 1. Подготовка (Arrange)

#   it :play do
#     expect(mario).to receive(:jump) # 3. Проверка (Assert)
#     described_class.play(mario)     # 2. Действие (Act)
#   end
# end
