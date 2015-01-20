# The module that contains everything Semantology-related
module Semantology
  # The module that contains every reader class
  module Reader
    # RDFa reader
    class RDFa
      # Convert RDFa data in file at path into internal format
      # @param path [String] path to file. can be local or a website
      # @return [RDF::Graph] RDFa data in internal format
      def self.read(path)
        RDF::Graph.load(path, :format => :rdfa)
      end
    end
  end
end
