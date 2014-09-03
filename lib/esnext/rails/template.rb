require 'esnext'

module Esnext
  module Rails
    class Template < Tilt::Template
      def self.default_mime_type
        'application/javascript'
      end

      def prepare; end

      def evaluate(scope, locals, &block)
        Esnext.compile(data).code
      end
    end
  end
end
