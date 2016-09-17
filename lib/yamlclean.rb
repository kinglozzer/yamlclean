require 'yaml'
require 'ya2yaml'

class YamlClean
  def self.start()
  end

  def self.clean(filename)
  	yamlString = IO.read(filename)
	dirty = YAML.load(yamlString)
	cleaned = dirty.ya2yaml(:syck_compatible => true)
	return cleaned
  end
end

