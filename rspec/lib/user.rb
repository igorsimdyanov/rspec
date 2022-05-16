class User
  class Error < RuntimeError; end
  RUSSIAN = /\A[а-яё]+\z/i
  attr_reader :email, :first_name, :last_name, :middle_name

  def initialize(email:, first_name:, last_name:, middle_name:)
    unless URI::MailTo::EMAIL_REGEXP.match?(email)
      raise Error.new 'Wrong email parameter'
    end
    unless RUSSIAN.match?(first_name)
      raise Error.new 'Wrong first_name parameter'
    end
    unless RUSSIAN.match?(last_name)
      raise Error.new 'Wrong last_name parameter'
    end
    unless RUSSIAN.match?(middle_name)
      raise Error.new 'Wrong middle_name parameter'
    end

    @email = email
    @first_name = first_name
    @last_name = last_name
    @middle_name = middle_name
  end
end
