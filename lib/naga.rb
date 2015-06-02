require "naga/version"
require "naga/array"

module Naga
  class Application
    def call(env)
      `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
        ["Hello from Naga!!!"]]
    end
  end
end
