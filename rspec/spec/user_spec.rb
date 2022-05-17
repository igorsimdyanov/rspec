# frozen_string_literal: true

RSpec.describe User do
  let(:user) do
    User.new(
      email: 'test@test.ru',
      first_name: 'Тест',
      last_name: 'Тестов',
      middle_name: 'Тестович'
    )
  end

  context 'содержит методы' do
    it :email do
      expect(user).to respond_to :email
    end
    it :first_name do
      expect(user).to respond_to :first_name
    end
    it :last_name do
      expect(user).to respond_to :last_name
    end
    it :middle_name do
      expect(user).to respond_to :middle_name
    end
  end

  context 'корректно возвращает' do
    it :email do
      expect(user.email).to eq 'test@test.ru'
    end
    it :first_name do
      expect(user.first_name).to eq 'Тест'
    end
    it :last_name do
      expect(user.last_name).to eq 'Тестов'
    end
    it :middle_name do
      expect(user.middle_name).to eq 'Тестович'
    end
  end

  context 'с некоректными параметрами' do
    def user_wrong_email
      User.new(
        email: 'неверный',
        first_name: 'Тест',
        last_name: 'Тестов',
        middle_name: 'Тестович'
      )
    end
    it :email do
      expect { user_wrong_email }.to raise_error('Wrong email parameter')
    end

    def user_wrong_first_name
      User.new(
        email: 'test@test.ru',
        first_name: 'wrong',
        last_name: 'Тестов',
        middle_name: 'Тестович'
      )
    end
    it :first_name do
      expect { user_wrong_first_name }.to raise_error('Wrong first_name parameter')
    end

    def user_wrong_last_name
      User.new(
        email: 'test@test.ru',
        first_name: 'Тест',
        last_name: 'wrong',
        middle_name: 'Тестович'
      )
    end
    it :last_name do
      expect { user_wrong_last_name }.to raise_error('Wrong last_name parameter')
    end

    def user_wrong_middle_name
      User.new(
        email: 'test@test.ru',
        first_name: 'Тест',
        last_name: 'Тестов',
        middle_name: 'wrong'
      )
    end
    it :middle_name do
      expect { user_wrong_middle_name }.to raise_error('Wrong middle_name parameter')
    end
  end
end
