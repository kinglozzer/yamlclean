require 'yaml'
require 'ya2yaml'

module YamlClean
  def self.start()
  end

  def self.clean(filename)
  	yamlString = IO.read(filename)
  	dirty = YAML.load(yamlString)
	  cleaned = dirty.ya2yaml(:syck_compatible => true)

    # Remove trailing whitespace
    cleaned = cleaned.gsub(/ +\n/, "\n")

    # Remove unnecessary --- header
    if(cleaned.scan(/^---$/).size == 1) then
      cleaned = cleaned.gsub(/^---$\n?/, "")
    end

	  return cleaned
  end
end

