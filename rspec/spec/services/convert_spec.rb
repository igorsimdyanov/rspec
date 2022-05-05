# frozen_string_literal: true
RSpec.describe Services::Convert do
  context 'при вызове класса' do
    it 'возвращает целое число' do
      expect(described_class.call(800)).to be_an_instance_of(Integer)
    end
  end

  context 'когда число меньше килобайта' do
    it 'вернет значение без изменений' do
      expect(described_class.call(800)).to eq 800
    end
  end

  context 'когда число меньше мегабайта' do
    it 'вернет значение c Kb' do
      expect(described_class.call(1_000_000)).to eq '976 Kb'
    end
  end

  context 'когда число меньше гигабайта' do
    it 'вернет значение c Mb' do
      expect(described_class.call(1_000_000_000)).to eq '953 Mb'
    end
  end

  context 'когда число меньше терабайта' do
    it 'вернет значение c Gb' do
      expect(described_class.call(1_000_000_000_000)).to eq '931 Gb'
    end
  end

  context 'когда число больше терабайта' do
    it 'вернет значение c Tb' do
      expect(described_class.call(2_000_000_000_000)).to eq '1 Tb'
    end
  end
end
