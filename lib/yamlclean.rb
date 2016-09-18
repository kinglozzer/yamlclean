require 'yaml'
require 'ya2yaml'

module YamlClean
  def self.start()
  end

  def self.clean(filename)
    if !File.file?(filename) then
      raise "File not found: " + filename
    elsif !File.readable?(filename)
      raise "Can't read file: " + filename
    end

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

