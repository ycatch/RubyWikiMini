# Unit test for ../src/main.rb
# $ ruby .\test\test_main.rb

require 'minitest/autorun'
require_relative '../src/main.rb'

class TestHello < Minitest::Test
  def setup
    @hello = Main.new
  end

  def test_hello
    assert_equal 'RubyWikiMini', @hello.hello
  end
end