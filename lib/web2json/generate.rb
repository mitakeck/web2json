require 'thor'
require 'higokami'

# MyCLI
module Web2json
  # Generator
  class Generator < Thor
    option :j, required: true
    desc 'parse json', 'json schema'
    def parse(url)
      higokami = Higokami.new(options[:j]) if options[:j]
      puts higokami.parse(url)
    end
  end
end
