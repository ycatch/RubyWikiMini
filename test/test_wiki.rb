# Unit test for ../src/wiki.rb
# $ ruby .\test\test_wiki.rb

require 'minitest/autorun'
require_relative '../src/wiki.rb'

class TestWiki < Minitest::Test
  def setup
    @wiki = Wiki.new
  end

  def test_wiki
    assert_equal 'Hello world', @wiki.main
  end
end