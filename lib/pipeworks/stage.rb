require 'bunny'
require 'json'

module Pipeworks::Stage
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    attr_reader :queue_in_name, :queue_out_name

    def queue_in(queue_in)
      @queue_in_name = queue_in
    end

    def queue_out(queue_out)
      @queue_out_name = queue_out
    end
  end
end
