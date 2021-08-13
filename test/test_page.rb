# Unit test for ../src/page.rb
# $ ruby .\test\test_page.rb

require 'minitest/autorun'
require_relative '../src/page.rb'

class TestPage < Minitest::Test
  def setup
    @page = Page.new
  end

  def test_main
    assert_equal 'RubyWikiMini', @page.main
  end
end