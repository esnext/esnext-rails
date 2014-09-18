require 'esnext/rails/template'
require 'rails/engine'
require 'sprockets'

module Esnext
  module Rails
    class Engine < ::Rails::Engine
      config.before_initialize do |app|
        Sprockets.register_engine '.esn', Esnext::Rails::Template
        Sprockets.register_engine '.esnext', Esnext::Rails::Template
      end
    end
  end
end
