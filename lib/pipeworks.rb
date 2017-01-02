require "pipeworks/version"
require "pipeworks/configuration"
require "pipeworks/stage"

module Pipeworks
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration = @configuration ||= Configuration.new
    yield(configuration)
  end
end
