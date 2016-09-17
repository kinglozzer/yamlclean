require 'minitest/autorun'
require '../lib/yamlclean'

class TestYamlClean < MiniTest::Unit::TestCase
  def test_yamlclean
    assert_equal IO.read("test/output.yml"), YamlClean.clean("test/input.yml")
  end
end
