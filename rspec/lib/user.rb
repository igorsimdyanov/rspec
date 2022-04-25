class User
  attr_reader :email, :first_name, :last_name, :middle_name

  def initialize(email:, first_name:, last_name:, middle_name:)
    @email = email
    @first_name = first_name
    @last_name = last_name
    @middle_name = middle_name
  end
end
