require 'test_helper'
require 'yamlclean'

class YamlCleanTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::YamlClean::VERSION
  end

  def test_it_tidies_yml
    assert_equal IO.read("test/output.yml"), YamlClean.clean("test/input.yml")
  end
end
