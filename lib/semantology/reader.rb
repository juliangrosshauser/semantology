# The module that contains everything Semantology-related
module Semantology
  # The Reader translates the data in an input file into the
  # internal format, that can be written to an output file by
  # the {Semantology::Writer}
  class Reader
    # Convert RDFa data in file at path into internal format
    # @param path [String] path to file. can be local or a website
    # @param format [Symbol] input data format. can be `:rdfa`, `:microdata` or `:microformat`
    # @return [RDF::Graph] RDFa data in internal format
    def self.read(path, format)
      if :microformat == format
        fail NotImplementedError, 'Microformat is currently not supported'
      end

      RDF::Graph.load(path, :format => format)
    end
  end
end
