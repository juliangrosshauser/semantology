require 'rdf'
require 'linkeddata'

require_relative 'semantology/reader'
require_relative 'semantology/writer'

# The module that contains everything Semantology-related
module Semantology
  # Convinience method
  # @param input_path [String] path to input file. can be local or a website
  # @param input_format [Symbol] format of input data. can be `:rdfa`, `:microdata` or `:microformat`
  # @param output_path [String] path to output file
  # @param output_format [Symbol] format of output data. can only be `:turtle`
  def self.translate(input_path, input_format, output_path, output_format)
    # check if specified input format is supported
    unless [:rdfa, :microdata, :microformat].include? input_format
      fail ArgumentError, 'Specified input format is not supported'
    end

    # check if specified output format is supported
    unless :turtle == output_format
      fail ArgumentError, 'Specified output format is not supported'
    end

    graph = Semantology::Reader.read(input_path, input_format)
    Semantology::Writer.write(graph, output_format, output_path)
  end
end
