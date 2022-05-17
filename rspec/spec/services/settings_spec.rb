# frozen_string_literal: true

RSpec.describe Services::Settings, 'in rake-task' do
  def build_settings
    settings = described_class.instance
    settings[:title] = 'Новостной портал'
    settings[:per_page] = 30
    settings
  end

  let(:fst) { build_settings.list }
  let(:snd) { build_settings.list }

  it 'возвращает ссылку на один и тот же объект' do
    expect(fst).to be snd
  end
end
