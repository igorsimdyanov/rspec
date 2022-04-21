require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require 'minitest/autorun'
require_relative 'hello'

class TestHello < MiniTest::Test
  def setup
    @object = Hello.new
  end

  def test_method_say_return_a_string
    assert_instance_of String, @object.say('ruby')
  end

  def test_method_say_return_correct_phrase
    assert_equal 'Hello, ruby!', @object.say('ruby')
  end

  def test_method_hello_return_a_string
    assert_instance_of String, @object.hello('minitests')
  end
end
