RSpec.describe 'Проверяем Metadata', :outer_group do
  it 'в RSpec', :fast, :focus do |example|
    pp example.metadata
  end

  context 'во вложенной группе' do
    it 'так же наследуется', line: 4, default: false do |example|
      pp example.metadata
    end
  end
end
