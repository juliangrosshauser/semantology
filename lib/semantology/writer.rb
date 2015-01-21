# The module that contains everything Semantology-related
module Semantology
  # The Writer outputs the data read by the {Semantology::Reader} into a file
  class Writer
    # Writes data read by {Semantology::Reader} into a file
    # @param data [RDF::Graph] data read by {Semantology::Reader}
    # @param format [Symbol] output data format. can be only be `:turtle`
    # @param path [String] path to file
    def self.write(data, format, path)
      case format
      when :turtle
        RDF::Turtle::Writer.open(path) do |writer|
          writer << data
        end
      else
        fail ArgumentError, 'Specified output format is not supported'
      end
    end
  end
end
