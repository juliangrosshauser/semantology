require 'rdf'
require 'linkeddata'

require_relative 'semantology/reader'

# The module that contains everything Semantology-related
module Semantology
  # Convinience method
  # @param input_path [String] path to input file. can be local or a website
  # @param input_format [Symbol] format of input data.
  # can be `:rdfa`, `:microdata` or `:microformat`
  # @param output_path [String] path to output file
  # @param output_format [Symbol] format of output data. can only be `:turtle`
  def self.translate(input_path, input_format, output_path, output_format)
    case input_format
    when :rdfa
      graph = Semantology::Reader.read(input_path, :rdfa)
    when :microdata
      fail NotImplementedError, 'Microdata is not implemented'
    when :microformat
      fail NotImplementedError, 'Microformat is not implemented'
    else
      fail ArgumentError, 'Specified input format is not supported'
    end

    case output_format
    when :turtle
      fail NotImplementedError, 'Turtle is not implemented'
    else
      fail ArgumentError, 'Specified output format is not supported'
    end
  end
end
