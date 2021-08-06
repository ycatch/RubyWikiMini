# Unit test for ..\main.rb
# $ ruby .\test\basic_test.rb

require 'minitest/autorun'
require_relative '../main.rb'

class TestHello < Minitest::Test
  def setup
    @hello = Main.new
  end

  def test_hello
    assert_equal 'RubyWikiMini', @hello.hello
  end
end